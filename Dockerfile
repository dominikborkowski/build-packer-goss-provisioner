FROM golang:1.13-alpine3.10

LABEL maintainer="Dominik L. Borkowski"

# versions of bundled software
ARG PACKER_VER=1.5.1
ARG PACKER_PROVISIONER_GOSS_VER=1.0.0
ARG GOSS_VER=0.3.9


# while go 1.13 should automatically key on existance of go.mod, we need it for provisioner
ENV GO111MODULE=on

# we'll need binutils for strip tool. compile everything, then clean up
RUN apk --no-cache --upgrade add binutils && \
    go get github.com/hashicorp/packer@v${PACKER_VER} && \
    go get github.com/YaleUniversity/packer-provisioner-goss@v${PACKER_PROVISIONER_GOSS_VER} && \
    go get github.com/aelsabbahy/goss/cmd/goss@v${GOSS_VER} && \
    strip $GOPATH/bin/* && \
    go clean -cache -modcache && \
    apk --no-cache del binutils
