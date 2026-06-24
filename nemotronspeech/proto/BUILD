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
    name = "nemotron_audio_proto",
    srcs = [
        ":nemotron_audio.proto"
    ],
    deps = [],
)

cc_grpc_library(
    name = "nemotron_common_proto",
    srcs = [
        ":nemotron_common.proto"
    ],
    deps = [],
)

cc_grpc_library(
    name = "nemotron_grpc_asr",
    srcs = [":nemotron_asr.proto"],
    deps = [":nemotron_audio_proto", ":nemotron_common_proto"],
)

cc_grpc_library(
    name = "nemotron_grpc_tts",
    srcs = [":nemotron_tts.proto"],
    deps = [":nemotron_audio_proto", ":nemotron_common_proto"],
)

cc_grpc_library(
    name = "nemotron_grpc_nlp",
    srcs = [":nemotron_nlp.proto"],
    deps = [":nemotron_common_proto"],
)

cc_grpc_library(
    name = "nemotron_grpc_nmt",
    srcs = [":nemotron_nmt.proto"],
    deps = [
         ":nemotron_audio_proto",
         ":nemotron_grpc_tts",
         ":nemotron_grpc_asr",
         ":nemotron_common_proto",
         ]
)


cc_grpc_library(
    name = "nemotron_grpc_health",
    srcs = [":health.proto"],
    deps = []
)
