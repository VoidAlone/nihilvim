#!/usr/bin/env bash

FILE="$(realpath "$1")"
LINE="${2:-1}"
COL="${3:-1}"

SERVER="${XDG_RUNTIME_DIR}/nvim-godot.sock"

if nvim --server "$SERVER" --remote-expr '1' >/dev/null 2>&1; then
    # Existing instance.
    nvim --server "$SERVER" --remote "$FILE"

    # Jump to requested location.
    nvim --server "$SERVER" \
        --remote-expr "cursor($LINE, $COL)"
else
    # Start a new terminal containing a listening Neovim.
    ghostty --window-inherit-working-directory=false \
        -e nvim \
        --listen "$SERVER" \
        "+call cursor($LINE, $COL)" \
        "$FILE"
fi
