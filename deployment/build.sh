#!/bin/bash

BUILD_COMMAND="flutter/bin/flutter build web --release --web-renderer canvaskit"
echo $BUILD_COMMAND
eval $BUILD_COMMAND 