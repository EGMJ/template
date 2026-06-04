#!/usr/bin/env bash
set -euo pipefail

# Setup script for new developers
# Usage: ./scripts/setup.sh

echo "=== Project Setup ==="

# Check prerequisites
command -v git >/dev/null 2>&1 || { echo "git is required"; exit 1; }
command -v docker >/dev/null 2>&1 || echo "Warning: docker not found (optional)"

# Create .env if it doesn't exist
if [ ! -f .env ]; then
  if [ -f .env.example ]; then
    cp .env.example .env
    echo "Created .env from .env.example — edit with your local values"
  fi
fi

# Install git hooks (if using husky, lefthook, etc.)
# npx husky install
# lefthook install

echo "=== Setup complete ==="
