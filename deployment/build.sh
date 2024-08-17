#!/bin/bash
# Build script for Flutter in CI/CD environment (like Vercel)

BUILD_COMMAND="flutter/bin/flutter build web --release --web-renderer canvaskit"
echo $BUILD_COMMAND
eval $BUILD_COMMAND 