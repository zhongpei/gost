#!/bin/bash

docker run  \
    -v $PWD:/usr/src/myapp \
    -e GOPATH=/usr/src/myapp \
    -w /usr/src/myapp \
    golang \
    go build  --ldflags '-extldflags "-static"'  .
#    -w /usr/src/myapp golang:1.4.2 go install goprobe
#mv -f gost ./bin
