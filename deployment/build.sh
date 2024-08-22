#!/bin/bash
# --- Build script for Flutter in CI/CD environment (like Vercel) ---
# The environment variables we need for the working dev/prod deployment are in the shell environment
# Hence we need to get these, put them into the corresponding .env file, let the build_runner run and then actually build

# --- HELPER FUNCTIONS START --
# Define color codes
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Log function
log() {
  echo -e "${GREEN}BUILD-SCRIPT: $1${NC}"
}
# --- HELPER FUNCTIONS END ---

# Extract environment variables into file
deployment_environment=$ENVIRONMENT
sentry_dsn=$SENTRY_DSN
enable_analytics=$ENABLE_ANALYTICS
firebase_options=$FIREBASE_OPTS

env_suffix=$([[ "$deployment_environment" == "PROD" ]] && echo ".prod" || echo ".dev")
env_file_name="env/.env${env_suffix}"

log "Writing environment variables to $env_file_name"
echo "SENTRY_DSN=$sentry_dsn" >> $env_file_name
echo "ENVIRONMENT=$deployment_environment" >> $env_file_name
echo "ENABLE_ANALYTICS=$enable_analytics" >> $env_file_name

# Unzip the decoded options with gzip
unzipped_options=$(echo "$firebase_options" | base64 -d | gzip -d)

# Write the unzipped options to a file
mkdir -p lib/core/firebase
echo "$unzipped_options" >> lib/core/firebase/firebase_options.dart

# Setup environment file
FB_COMMAND="flutter/bin/dart run build_runner build --delete-conflicting-outputs"
log "Running build_runner: $FB_COMMAND"
eval $FB_COMMAND 

# Build the project
BUILD_COMMAND="flutter/bin/flutter build web --release --web-renderer canvaskit"
log "Building the project: $BUILD_COMMAND"
eval $BUILD_COMMAND