# NVIDIA Riva Common

[NVIDIA Riva](https://developer.nvidia.com/riva) is a GPU-accelerated SDK for building Speech AI applications that are customized for your use case and deliver real-time performance. This repo provides API definitions and other shared components used throughout the project.

## gRPC & Protocol Buffers

Riva clients use [gRPC](https://grpc.io) to communicate with the Riva server. The APIs and message types are defined in `riva/proto`. Complete API documentation is available in the [Riva user documentation](https://docs.nvidia.com/deeplearning/riva/user-guide/docs/reference/protos/protos.html).

### Compile Protocol Buffers

Compling `.proto` files require the protocol buffer compiler [`protoc`](https://developers.google.com/protocol-buffers/docs/downloads) and the corresponding [gRPC Codegen Plugin](https://grpc.io/docs/languages/) of your desired language.

Use the [Makefile](Makefile) or refer to the [Protocol Buffers](https://developers.google.com/protocol-buffers/docs/tutorials) documentation to compose the `protoc` command.

```bash
make golang
```

## Client Packages

NVIDIA offers Riva client packages which include various language-specific bindings for the protocol buffers:

* **C++**: [nvidia-riva/cpp-clients](https://github.com/nvidia-riva/cpp-clients)
* **Python**: [nvidia-riva/python-clients](https://github.com/nvidia-riva/python-clients)

## Contributing

Submit [GitHub issues](https://github.com/nvidia-riva/common/issues) for bugs and requests.

Visit the [NVIDIA Riva developer forum](https://forums.developer.nvidia.com/c/ai-data-science/deep-learning/riva/475) for questions and discussions.
