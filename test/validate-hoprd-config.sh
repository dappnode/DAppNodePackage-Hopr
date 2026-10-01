#!/usr/bin/env bash
# Validates hoprd.cfg.yaml against the real hoprd binary's own config parser
# (`hoprd-cfg --validate-args`), the same check hoprd effectively runs before launching.
# The image tag is read from docker-compose.yml's UPSTREAM_VERSION.
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."

HOPRD_VERSION="$(sed -n 's/^ *UPSTREAM_VERSION: *\([^ @]*\).*/\1/p' docker-compose.yml)"
HOPRD_IMAGE="europe-west3-docker.pkg.dev/hoprassociation/docker-images/hoprd:${HOPRD_VERSION}"

docker pull "${HOPRD_IMAGE}" >/dev/null
docker run --rm \
  -v "$(pwd)/hoprd.cfg.yaml:/app/hoprd.cfg.yaml:ro" \
  --entrypoint /bin/hoprd-cfg \
  "${HOPRD_IMAGE}" \
  --validate-args -- \
  --identity /app/hopr.id \
  --data /app/data \
  --password validation-password \
  --apiToken validation-token-123456 \
  --safeAddress 0x0000000000000000000000000000000000000001 \
  --moduleAddress 0x0000000000000000000000000000000000000002 \
  --host 1.2.3.4:9091 \
  --configurationFilePath /app/hoprd.cfg.yaml

echo "hoprd.cfg.yaml is a valid config for ${HOPRD_IMAGE}."
