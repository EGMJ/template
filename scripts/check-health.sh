#!/usr/bin/env bash
set -euo pipefail

# Health check script for the application
# Usage: ./scripts/check-health.sh [url]

URL="${1:-http://localhost:3000/health}"
MAX_RETRIES=30
RETRY_INTERVAL=2

echo "Checking health at $URL..."

for i in $(seq 1 $MAX_RETRIES); do
  if curl -sf "$URL" > /dev/null 2>&1; then
    echo "Service is healthy!"
    exit 0
  fi
  echo "Attempt $i/$MAX_RETRIES - waiting ${RETRY_INTERVAL}s..."
  sleep "$RETRY_INTERVAL"
done

echo "Service did not become healthy after $MAX_RETRIES attempts"
exit 1
