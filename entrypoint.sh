#!/bin/bash
set -euo pipefail

# hoprd's --blokliUrl rejects an explicit empty string - unset it so the value in
# hoprd.cfg.yaml wins, unless the setup wizard actually provided one.
if [ -z "${HOPRD_BLOKLI_URL:-}" ]; then
  unset HOPRD_BLOKLI_URL
fi

env ${ADDITIONAL_ENVIRONMENT_VARS:-} /bin/docker-entrypoint.sh ${ADDITIONAL_CMDLINE_ARGS:-}
