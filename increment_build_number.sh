#!/bin/bash

PUBSPEC=pubspec.yaml

CURRENT_LINE=$(grep '^version: ' $PUBSPEC)
if [[ -z "$CURRENT_LINE" ]]; then
  echo "Could not find version line in pubspec.yaml."
  exit 1
fi

VERSION=$(echo $CURRENT_LINE | sed -E 's/version: ([0-9\.]+)\+([0-9]+)/\1/')
BUILD=$(echo $CURRENT_LINE | sed -E 's/version: ([0-9\.]+)\+([0-9]+)/\2/')
NEW_BUILD=$((BUILD + 1))

# Update the line in pubspec.yaml
sed -i '' -E "s/^version: .+/version: ${VERSION}+${NEW_BUILD}/" $PUBSPEC

# Echo for interactive feedback
echo "Incremented build number: Now version $VERSION+$NEW_BUILD in pubspec.yaml" 1>&2
# Output just the version string for scripting (as the last line, to be captured)
echo "$VERSION+$NEW_BUILD"
