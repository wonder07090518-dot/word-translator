#!/bin/zsh
set -euo pipefail

SCRIPT_DIR=${0:A:h}
BUILD_DIR="$SCRIPT_DIR/.build/release"
APP_DIR="$SCRIPT_DIR/dist/单词小标.app"
CONTENTS_DIR="$APP_DIR/Contents"

cd "$SCRIPT_DIR"
swift build -c release

mkdir -p "$CONTENTS_DIR/MacOS" "$CONTENTS_DIR/Resources"
cp "$BUILD_DIR/WordBubble" "$CONTENTS_DIR/MacOS/WordBubble"
cp "$SCRIPT_DIR/Packaging/Info.plist" "$CONTENTS_DIR/Info.plist"

codesign --force --deep --sign - "$APP_DIR"
echo "$APP_DIR"
