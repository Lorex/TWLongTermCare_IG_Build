#!/bin/bash
set -e

publisher="./input-cache/publisher.jar"
tx_server="https://tx.fhir.org"
publisher_args=()

while [ "$#" -gt 0 ]; do
  case "$1" in
    -tx)
      if [ "$#" -lt 2 ] || { [ "$2" != "$tx_server" ] && [ "$2" != "$tx_server/" ]; }; then
        echo "ERROR: This project requires terminology validation at $tx_server." >&2
        exit 1
      fi
      shift 2
      ;;
    *) publisher_args+=("$1"); shift ;;
  esac
done

if [ ! -f "$publisher" ]; then
  publisher="../publisher.jar"
  if [ ! -f "$publisher" ]; then
    echo "ERROR: IG Publisher not found. Run ./_updatePublisher.sh first." >&2
    exit 1
  fi
fi

echo "Checking terminology server: $tx_server"
if ! curl --fail --silent --show-error --location --connect-timeout 10 --max-time 30 \
    "$tx_server/r4/metadata" --output /dev/null; then
  echo "ERROR: Terminology server is unavailable. Build stopped; validation will not be skipped." >&2
  exit 1
fi

exec java -Dfile.encoding=UTF-8 -jar "$publisher" -ig . -tx "$tx_server" "${publisher_args[@]}"
