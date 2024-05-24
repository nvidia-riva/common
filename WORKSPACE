workspace(name = "com_nvidia_riva_api")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# This is now required because the grpc archive below has a broken link to the protobuf archive
# http_archive(
#     name = "com_google_protobuf",
#     sha256 = "416212e14481cff8fd4849b1c1c1200a7f34808a54377e22d7447efdf54ad758",
#     strip_prefix = "protobuf-09745575a923640154bcf307fba8aedff47f240a",
#     url = "https://github.com/protocolbuffers/protobuf/archive/09745575a923640154bcf307fba8aedff47f240a.tar.gz",
# )

# http_archive(
#     name = "com_github_grpc_grpc",
#     sha256 = "2fcb7f1ab160d6fd3aaade64520be3e5446fc4c6fa7ba6581afdc4e26094bd81",
#     strip_prefix = "grpc-1.26.0",
#     urls = [
#         "https://github.com/grpc/grpc/archive/v1.26.0.tar.gz",
#     ],
# )
http_archive(
    name = "com_github_grpc_grpc",
    sha256 = "fb1ed98eb3555877d55eb2b948caca44bc8601c6704896594de81558639709ef",
    strip_prefix = "grpc-1.50.1",
    urls = [
        "https://github.com/grpc/grpc/archive/refs/tags/v1.50.1.tar.gz",
    ],
)

http_archive(
  name = "com_google_protobuf",
  sha256 = "9b4ee22c250fe31b16f1a24d61467e40780a3fbb9b91c3b65be2a376ed913a1a",
  strip_prefix = "protobuf-3.13.0",
  urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.13.0.tar.gz"],
)

load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")
grpc_deps()
load("@com_github_grpc_grpc//bazel:grpc_extra_deps.bzl", "grpc_extra_deps")
grpc_extra_deps()