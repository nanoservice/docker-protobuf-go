FROM nanoservice/protobuf:3.0-alpha

MAINTAINER Oleksii Fedorov <waterlink000@gmail.com>

RUN apk add --update go

RUN mkdir -p /go/src

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN go get -u github.com/golang/protobuf/{proto,protoc-gen-go} 
