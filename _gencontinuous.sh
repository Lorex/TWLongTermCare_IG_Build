#!/bin/bash
exec "$(dirname "$0")/_genonce.sh" -watch "$@"
