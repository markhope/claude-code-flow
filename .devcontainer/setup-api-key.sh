#!/usr/bin/env bash

if [ -z "${ANTHROPIC_API_KEY}" ]; then
  echo "⚠️ ANTHROPIC_API_KEY is not set ⚠️"
  echo ""
  echo "To use Claude Code, you'll need an anthropic account.  You'll be prompted to login the first time you run `claude`"
  exit 1
else
  mkdir ~/.claude
  echo '{"apiKeyHelper": "~/.claude/anthropic_key.sh"}' > ~/.claude/settings.json
  echo '#!/usr/bin/env bash\necho $ANTHROPIC_API_KEY' > ~/.claude/anthropic_key.sh
  chmod +x ~/.claude/anthropic_key.sh
  echo "✅ ANTHROPIC_API_KEY is set"
  echo "Claude Code is ready to use. Run the following in your terminal: claude"
fi
