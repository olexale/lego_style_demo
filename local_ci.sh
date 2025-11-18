#!/bin/bash
# Local CI script for lego_style_demo
set -e

# Use system `flutter` to activate and run melos (do not use FVM in this script)
FLUTTER_CMD="flutter"

# Ensure dart pub global executables are on PATH
PUB_CACHE_BIN="$HOME/.pub-cache/bin"
if [[ ":$PATH:" != *":$PUB_CACHE_BIN:"* ]]; then
	export PATH="$PATH:$PUB_CACHE_BIN"
fi

echo "Activating Melos via: $FLUTTER_CMD pub global activate melos"
$FLUTTER_CMD pub global activate melos

# Check Dart SDK version reported by flutter (require >= 3.9.0)
flutter_version_output=$($FLUTTER_CMD --version 2>&1 || true)
echo "$flutter_version_output"
version_numbers=$(echo "$flutter_version_output" | sed -n 's/.*Dart SDK version: \([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p' | head -n1)
if [ -z "$version_numbers" ]; then
	# fallback to dart --version if available
	if command -v dart >/dev/null 2>&1; then
		version_numbers=$(dart --version 2>&1 | awk '{for(i=1;i<=NF;i++){ if($i ~ /^[0-9]+\.[0-9]+\.[0-9]+$/){print $i; exit}}}')
	fi
fi
if [ -z "$version_numbers" ]; then
	echo "Warning: couldn't parse Dart SDK version. Proceeding but melos may fail." >&2
else
	IFS=. read -r major minor patch <<< "$version_numbers"
	compare=$((major * 10000 + minor * 100 + patch))
	if [ "$compare" -lt 30900 ]; then
		echo "Dart SDK $version_numbers is installed (via flutter) but workspace requires >= 3.9.0." >&2
		echo "Please update your Flutter to a version that includes Dart 3.9+ and re-run this script." >&2
		exit 1
	fi
fi

# Run melos via flutter's dart pub global run so it matches the sdk
MELOS_CMD="$FLUTTER_CMD pub global run melos --"

echo "Bootstrapping Melos from repository root..."
eval "$MELOS_CMD bootstrap"
echo "Regenerating Freezed files in all packages..."
eval "$MELOS_CMD exec -- dart run build_runner build --delete-conflicting-outputs"

echo "Running build_runner for root package..."
$FLUTTER_CMD pub run build_runner build --delete-conflicting-outputs

echo "Running flutter analyze across workspace..."
eval "$MELOS_CMD exec -- flutter analyze"

echo "Checking code format across workspace..."
 eval "$MELOS_CMD exec -- dart format --set-exit-if-changed ."

# Uncomment below to run tests if/when you add them
# echo "Running tests..."
# melos exec -- "flutter test"

echo "Local CI completed successfully."
