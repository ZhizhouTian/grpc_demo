#!/bin/bash

PATH="${PATH}:/root/.golang/bin/" \
protoc \
	-I=/usr/local/include/ \
	-I=$GOPATH/src/ \
	-I=$GOPATH/src/github.com/gogo/protobuf/ \
	--proto_path=$GOPATH/src/github.com/ZhizhouTian/grpc_demo \
	--go_out=\
Mgithub.com/kata-containers/agent/pkg/types/types.proto=github.com/kata-containers/agent/pkg/types,\
Mgoogle/protobuf/any.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/duration.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/struct.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/timestamp.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/wrappers.proto=github.com/gogo/protobuf/types,\
Mgoogle/protobuf/empty.proto=github.com/gogo/protobuf/types,\
plugins=grpc:. \
	demo.proto

#	plugins=grpc:runtime/v2/task \
#Mgoogle/protobuf/any.proto=
#	-I=$GOPATH/src/github.com/gogo/protobuf/protobuf \
#	-I=$GOPATH/src/github.com/gogo/protobuf/gogoproto \
#	-I=$GOPATH/src/github.com/containerd/containerd/api/types \
#	-I=/root/containerd/vendor/github.com/gogo/protobuf/gogoproto \
