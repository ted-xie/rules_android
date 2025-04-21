#!/usr/bin/env bash

# --- begin runfiles.bash initialization v2 ---
# Copy-pasted from the Bazel Bash runfiles library v2.
set -uo pipefail; f=bazel_tools/tools/bash/runfiles/runfiles.bash
source "${RUNFILES_DIR:-/dev/null}/$f" 2>/dev/null || \
  source "$(grep -sm1 "^$f " "${RUNFILES_MANIFEST_FILE:-/dev/null}" | cut -f2- -d' ')" 2>/dev/null || \
  source "$0.runfiles/$f" 2>/dev/null || \
  source "$(grep -sm1 "^$f " "$0.runfiles_manifest" | cut -f2- -d' ')" 2>/dev/null || \
  source "$(grep -sm1 "^$f " "$0.exe.runfiles_manifest" | cut -f2- -d' ')" 2>/dev/null || \
  { echo>&2 "ERROR: ${BASH_SOURCE[0]} cannot find $f"; exit 1; }; f=; set -e
# --- end runfiles.bash initialization v2 ---

create_scratch_dir_sh_location=rules_bazel_integration_test/tools/create_scratch_dir.sh
create_scratch_dir_sh="$(rlocation "${create_scratch_dir_sh_location}")" || \
  (echo >&2 "Failed to locate ${create_scratch_dir_sh_location}" && exit 1)

# Get the paths to dependencies
BAZEL="$BIT_BAZEL_BINARY"
RULES_ANDROID_TAR="$(rlocation "rules_android/all_files.tar")" || \
    (echo >&2 "Failed to locate rules_android/all_files.tar" && exit 1)
BASICAPP_TAR="$(rlocation "${TEST_SRCDIR}/${TEST_WORKSPACE}/examples_basicapp_all_files.tar")" || \
    (echo >&2 "Failed to locate ${TEST_SRCDIR}/${TEST_WORKSPACE}/examples_basicapp_all_files.tar" && exit 1)
ANDROIDSDK_TAR="$(rlocation "${TEST_SRCDIR}/${TEST_WORKSPACE}/androidsdk.tar")" || \
    (echo >&2 "Failed to locate ${TEST_SRCDIR}/${TEST_WORKSPACE}/androidsdk.tar" && exit 1)

set -euo pipefail
set -x

# Set up the scratch directory
scratch_dir="$("${create_scratch_dir_sh}" --workspace "${BIT_WORKSPACE_DIR}")"

cd "$scratch_dir"

# Extract the Android SDK. Strip external/<blah>
mkdir androidsdk
cd androidsdk
tar xf "$ANDROIDSDK_TAR" --strip-components=2
export ANDROID_HOME=$(pwd)

# Extract rules_android. Strip external/rules_android.
cd "$scratch_dir"
mkdir rules_android
cd rules_android

tar xf "$RULES_ANDROID_TAR" --strip-components=2

# Extract the basic app
mkdir -p examples/basicapp
cd examples/basicapp
tar xf "$BASICAPP_TAR"

# Mobile-install on clean directory (just build)
"$BAZEL" mobile-install java/com/basicapp:basic_app -- --nodeploy

# Make an incremental change
sed -i "s/\"fizz\"/\"fuzz\"/g" java/com/basicapp/BasicActivity.java

# Mobile-install again. This time we'll collect a BEP and check that the build was incremental
"$BAZEL" mobile-install java/com/basicapp:basic_app --build_event_json_file=./bep.json -- --nodeploy

# Check that only one Javac action was triggered
# NOTE: This is a pretty dumb check that assumes quite a few things:
# 1. That the BEP json is formatted as a single line (by default, it is)
# 2. That the keys of dicts under actionData are arranged in a particular way,
#    with the 'mnemonic' and 'actionsExecuted' attributes directly abutted.
# This test itself is quite fragile, but not quite worth the effort to pull in JQ or some other json parsing tool
# to actually read the BEP json.
grep "\"mnemonic\":\"Javac\",\"actionsExecuted\":\"1\"" ./bep.json && echo "TEST PASSED" || bash -c "echo TEST FAILED; exit 1"