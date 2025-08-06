#!/bin/bash

docker run  \
    -v $PWD:/usr/src/myapp \
    -e GOPATH=/usr/src/myapp \
    -w /usr/src/myapp \
    golang \
    go get -v .

