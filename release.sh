#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: ./release.sh vX.X.X"
  exit 1
fi

VERSION=$1
PROJECT_NAME=$(basename "$(pwd)")
OUTPUT="${PROJECT_NAME}-${VERSION}.zip"

echo "Creating candidate release..."

git archive --format=zip \
  --output="$OUTPUT" \
  "$VERSION" \
  -- app \
  README.md \
  ':(exclude)tests' \
  ':(exclude)solution' \
  ':(exclude)Dockerfile' \
  ':(exclude)playwright.config.ts'

echo "✅ Release created: $OUTPUT"