#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_remote_domain info
PYTHONPATH=src python -m gbt_remote_domain check --payload '{}'
PYTHONPATH=src python -m gbt_remote_domain run   --payload '{}'
