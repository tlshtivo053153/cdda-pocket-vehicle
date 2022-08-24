#!/bin/bash

FILENAME="$1"

JQ_COMMAND='map(. | { "copy-from": .id, id: .id, type: .type, name: .name, looks_like: .looks_like, "folded_volume": .folded_volume, extend: .extend})'

cat "$FILENAME" | jq "$JQ_COMMAND" | json_formatter.cgi | sponge "$FILENAME"
