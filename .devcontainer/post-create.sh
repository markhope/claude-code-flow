#!/usr/bin/env bash

/opt/codex/setup_universal.sh

export SHELL=$(which bash)
pnpm setup
export PNPM_HOME="/root/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
pnpm install -g @anthropic-ai/claude-code @openai/codex