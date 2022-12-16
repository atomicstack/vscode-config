#!/bin/bash

function warn() {
  echo "$*" 1>&2
}

VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"

if [[ ! -L "$VSCODE_USER_DIR/settings.json" ]]; then
  warn "$VSCODE_USER_DIR/settings.json is not a symlink! gulp!"
fi

for f in snippets/*.json; do
  if [[ ! -L "$VSCODE_USER_DIR/$f" ]]; then
    warn "$VSCODE_USER_DIR/$f is not a symlink! gulp!"
  fi
done
