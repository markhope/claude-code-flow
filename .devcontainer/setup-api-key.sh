#!/usr/bin/env bash

if [ -z "${ANTHROPIC_API_KEY}" ]; then
  echo "⚠️ ANTHROPIC_API_KEY is not set ⚠️"
  echo ""
  echo "To use Claude Code, you'll need an anthropic account.  You'll be prompted to login the first time you run `claude`"
else
  mkdir -p ~/.claude
  cat > ~/.claude/settings.json <<EOF
{ "apiKeyHelper": "~/.claude/anthropic_key.sh" }
EOF

  cat > ~/.claude/anthropic_key.sh <<'EOF'
#!/usr/bin/env bash
echo $ANTHROPIC_API_KEY
EOF

  chmod +x ~/.claude/anthropic_key.sh

  echo "✅ ANTHROPIC_API_KEY is set"
  echo "Claude Code is ready. Run: claude"
fi
