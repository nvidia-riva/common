DST_DIR ?= .
SRC_DIR ?= ./riva/proto

setup:
	@mkdir -p ${DST_DIR}
.PHONY: setup

# Requires protoc-gen-go and protoc-gen-go-grpc
# 	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
# 	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
golang: setup
	@echo "==> Generating golang bindings"
	@which protoc-gen-go protoc-gen-go-grpc > /dev/null
	protoc --go_out=${DST_DIR} --go_opt=paths=source_relative \
		--go-grpc_out=${DST_DIR} --go-grpc_opt=paths=source_relative \
		${SRC_DIR}/*.proto
.PHONY: golang

# Requires protoc-gen-grpc-java
# https://mvnrepository.com/artifact/io.grpc/protoc-gen-grpc-java
java: setup
	@echo "==> Generating java bindings"
	@which protoc-gen-grpc-java > /dev/null
	protoc --java_out=${DST_DIR} \
	--grpc-java_out=${DST_DIR} --plugin=protoc-gen-grpc-java=`which protoc-gen-grpc-java` \
	${SRC_DIR}/*.proto
.PHONY: java

# Requires python libraries grpcio and grpcio-tools
# 	pip3 install grpcio grpcio-tools
python: setup
	@echo "==> Generating python bindings"
	python3 -m grpc_tools.protoc --python_out=${DST_DIR} \
		--grpc_python_out=${DST_DIR} \
		-I=. ${SRC_DIR}/*.proto
	@sed -i -r 's/from riva.proto import (.+_pb2.*)/from . import \1/g' ${DST_DIR}/riva/proto/*_pb2*.py
.PHONY: python

clean:
	rm -vI ${DST_DIR}/riva/proto/*.py ${DST_DIR}/riva/proto/*.go
.PHONY: clean
