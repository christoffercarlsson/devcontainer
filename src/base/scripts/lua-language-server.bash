#!/usr/bin/env bash

CACHE_DIR="/tmp/lua-language-server"

mkdir -p "$CACHE_DIR/log" "$CACHE_DIR/meta"

exec /opt/lua-language-server/bin/lua-language-server \
    --logpath="$CACHE_DIR/log" \
    --metapath="$CACHE_DIR/meta" \
    "$@"
