#!/bin/bash

PUBLIC=<path to webroot>

docker run --name dev-web-server -td \
    -p 80:80 \
    -v $PUBLIC:/public \
    tingtingths/dev-web-server:$(cat VERSION)
