#!/bin/bash

FILENAME="$1"

JQ_COMMAND='map(. | .+ { "extend": { "flags": [ "FOLDABLE" ] } })'
cat "$FILENAME" | jq "$JQ_COMMAND" | json_formatter.cgi | sponge "$FILENAME"
