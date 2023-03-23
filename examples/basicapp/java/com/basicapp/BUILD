load("@rules_android//rules:rules.bzl", "android_binary", "android_library")

android_binary(
    name = "basic_app",
    manifest = "AndroidManifest.xml",
    deps = [":basic_lib"],
)

android_library(
    name = "basic_lib",
    srcs = ["BasicActivity.java", "BasicActivityJNI.java"],
    manifest = "AndroidManifest.xml",
    resource_files = glob(["res/**"]),
    deps = [":native_lib_static"],
)

cc_library(
    name = "native_lib_static",
    srcs = ["native.cc"],
    hdrs = ["native.h"],
    #alwayslink = True,
)
