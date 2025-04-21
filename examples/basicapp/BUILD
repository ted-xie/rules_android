load("@bazel_binaries//:defs.bzl", "bazel_binaries")
load(
    "@rules_bazel_integration_test//bazel_integration_test:defs.bzl",
    "bazel_integration_test",
    "bazel_integration_tests",
    "default_test_runner",
    "integration_test_utils",
)
load("@rules_shell//shell:sh_binary.bzl", "sh_binary")

filegroup(
    name = "all_files",
    srcs = glob(["*"]) + [
        "//java/com/basicapp:all_files",
    ],
)

genrule(
    name = "examples_basicapp_all_files_tar",
    srcs = [":all_files"],
    outs = ["examples_basicapp_all_files.tar"],
    cmd = "tar chf $@ $(locations :all_files)",
)

genrule(
    name = "androidsdk_tar",
    srcs = ["@androidsdk//:files"],
    outs = ["androidsdk.tar"],
    cmd = "tar cf $@ $(locations @androidsdk//:files)",
)

sh_binary(
    name = "incremental_mobile_install_test_runner",
    testonly = True,
    srcs = ["incremental_mobile_install_test_runner.sh"],
    data = [
        "@rules_bazel_integration_test//tools:create_scratch_dir",
        "@rules_android//:all_files_tar",
        ":androidsdk_tar",
        ":examples_basicapp_all_files_tar",
    ],
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

bazel_integration_test(
    name = "incremental_mobile_install_test",
    bazel_binaries = bazel_binaries,
    bazel_version = bazel_binaries.versions.current,
    test_runner = ":incremental_mobile_install_test_runner",
    workspace_path = "",
)