#!/usr/bin/env bash

/opt/codex/setup_universal.sh

export PNPM_HOME="/root/.local/share/pnpm"
export PATH="$PNPM_HOME:$NVM_BIN:$PATH"
export SHELL=$(which bash)
pnpm setup

pnpm install -g @anthropic-ai/claude-code