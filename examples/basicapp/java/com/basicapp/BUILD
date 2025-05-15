load("@rules_android//android:rules.bzl", "android_binary", "android_library")
load("@rules_java//java:java_plugin.bzl", "java_plugin")

java_plugin(
    name = "room_compiler",
    processor_class = "androidx.room.RoomProcessor",
    deps = [
        "@basic_maven//:androidx_room_room_compiler",
    ],
)

android_binary(
    name = "basic_app",
    manifest = "AndroidManifest.xml",
    deps = [":basic_lib"],
)

android_library(
    name = "basic_lib",
    srcs = glob(["*.java"]),
    javacopts = ["-source 11 -target 11"],
    manifest = "AndroidManifest.xml",
    resource_files = glob(["res/**"]),
    plugins = [
        ":room_compiler",
    ],
    deps = [
        "@basic_maven//:androidx_room_room_common_jvm",
        "@basic_maven//:androidx_room_room_compiler",
        "@basic_maven//:androidx_room_room_runtime",
    ]
)
