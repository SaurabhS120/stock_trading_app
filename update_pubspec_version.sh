#!/bin/bash

# Usage: ./update_pubspec_version.sh <version> <build_number>
# Example: ./update_pubspec_version.sh 1.2.4 17

if [ $# -ne 2 ]; then
  echo "Usage: $0 <version> <build_number>" >&2
  exit 1
fi

VERSION="$1"
BUILD_NUMBER="$2"

# Update version in pubspec.yaml only
sed -i '' -E "s/^version: .+/version: ${VERSION}+${BUILD_NUMBER}/" pubspec.yaml

# Echo for interactive feedback
echo "Updated pubspec.yaml to version $VERSION+$BUILD_NUMBER" 1>&2
# Output just the final version for scripting
echo "$VERSION+$BUILD_NUMBER"
