#!/usr/bin/env bash
set -e

echo "Starting Homebrew package installation"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BREWFILE="$SCRIPT_DIR/Brewfile"

if ! command -v brew &> /dev/null; then
    echo "Error: Homebrew is not installed yet."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    exit 1
fi

if [ ! -f "$BREWFILE" ]; then
    echo "Error: Brewfile not found at $BREWFILE"
    exit 1
fi

echo "Using Brewfile: $BREWFILE"
echo ""

echo "Updating Homebrew"
brew update

echo ""
echo "Installing packages from Brewfile"
brew bundle --file="$BREWFILE"

echo ""
echo "Installation complete!"
echo ""
echo "To verify installations, run:"
echo "brew bundle check --file=$BREWFILE"
