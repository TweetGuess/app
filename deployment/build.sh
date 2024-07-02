#!/bin/bash

BUILD_COMMAND="flutter build web --release --web-renderer canvaskit"
echo $BUILD_COMMAND
eval $BUILD_COMMAND 