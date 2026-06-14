#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

PASS=0
FAIL=0

pass() {
  PASS=$((PASS + 1))
  printf 'PASS: %s\n' "$1"
}

fail() {
  FAIL=$((FAIL + 1))
  printf 'FAIL: %s\n' "$1"
}

check_file() {
  local file="$1"
  if [ -f "$ROOT_DIR/$file" ]; then
    pass "file exists: $file"
  else
    fail "missing file: $file"
  fi
}

check_contains() {
  local file="$1"
  local pattern="$2"
  local label="$3"
  if grep -Eq "$pattern" "$ROOT_DIR/$file"; then
    pass "$label"
  else
    fail "$label"
  fi
}

echo "=== Wish Persona Basic Checks ==="

required_files=(
  "AGENTS.md"
  "README.md"
  "packages/wish-core-agent.md"
  "docs/core-functions.md"
  "docs/problem-solving-logic.md"
  "wish-evolution-module/persona/wish-evolution-patch.md"
  "platforms/README.md"
  "platforms/codex/wish.md"
  "platforms/hermes/wish.md"
  "platforms/openclaw/wish.md"
  "platforms/claude/wish.md"
  "platforms/cursor/wish.mdc"
  "platforms/vscode/wish.instructions.md"
  "platforms/codebuddy/wish.md"
  "platforms/kimi/wish.md"
  "platforms/trae/wish.md"
  "platforms/generic-agent/wish.md"
  "commands/wish.md"
  "commands/wish-soft.md"
  "commands/wish-evolve.md"
  "commands/wish-test.md"
  "plugin.json"
  "evals/expected-behavior.md"
  "evals/prompts/persona-activation.txt"
  "evals/prompts/vague-input.txt"
  "evals/prompts/correction-memory.txt"
  "evals/prompts/multi-version-output.txt"
  "evals/prompts/scope-control.txt"
)

for file in "${required_files[@]}"; do
  check_file "$file"
done

check_contains "AGENTS.md" "docs/core-functions\\.md" "AGENTS loads core functions"
check_contains "AGENTS.md" "Core Function Rule" "AGENTS has core function rule"
check_contains "README.md" "10 Core Functions" "README exposes 10 core functions"
check_contains "packages/wish-core-agent.md" "10 Core Functions" "single-file package contains core functions"
check_contains "docs/core-functions.md" "Carry Messy Instructions|承接混亂指令" "core functions include messy input"
check_contains "docs/core-functions.md" "SSS\\+" "core functions include SSS+"
check_contains "docs/core-functions.md" "Error Evolution|錯誤進化" "core functions include error evolution"
check_contains "commands/wish.md" "wish-soft|wish-evolve|wish-test" "command router references subcommands"
check_contains "plugin.json" "\"commands\": \"./commands/\"" "plugin manifest exposes commands"
check_contains "evals/expected-behavior.md" "PASS|PARTIAL|FAIL" "eval expected behavior defines scoring"

echo "================================"
echo "Passed: $PASS"
echo "Failed: $FAIL"
echo "Total:  $((PASS + FAIL))"
echo "================================"

[ "$FAIL" -eq 0 ]

