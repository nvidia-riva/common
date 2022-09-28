"""
Copyright (c) 2021, NVIDIA CORPORATION.  All rights reserved.
NVIDIA CORPORATION and its licensors retain all intellectual property
and proprietary rights in and to this software, related documentation
and any modifications thereto.  Any use, reproduction, disclosure or
distribution of this software and related documentation without an express
license agreement from NVIDIA CORPORATION is strictly prohibited.
"""

package(default_visibility = ["//visibility:public"])

load("@com_github_grpc_grpc//bazel:cc_grpc_library.bzl", "cc_grpc_library")

cc_grpc_library(
    name = "riva_audio_proto",
    srcs = [
        ":riva_audio.proto"
    ],
    deps = [],
)

cc_grpc_library(
    name = "riva_grpc_asr",
    srcs = [":riva_asr.proto"],
    deps = [":riva_audio_proto"],
)

cc_grpc_library(
    name = "riva_grpc_tts",
    srcs = [":riva_tts.proto"],
    deps = [":riva_audio_proto"]
)

cc_grpc_library(
    name = "riva_grpc_nlp",
    srcs = [":riva_nlp.proto"],
    deps = []
)
cc_grpc_library(
    name = "riva_grpc_nmt",
    srcs = [":riva_nmt.proto"],
    deps = [
         ":riva_audio_proto",
         ":riva_grpc_tts",
         ":riva_grpc_asr",
         ]
)


cc_grpc_library(
    name = "riva_grpc_health",
    srcs = [":health.proto"],
    deps = []
)
