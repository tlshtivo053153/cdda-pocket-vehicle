#!/bin/bash

FILENAME="$1"

JQ_COMMAND='map(. | if (has("folded_volume")|not) then .folded_volume|="250 ml" else . end)'
cat "$FILENAME" | jq "$JQ_COMMAND" | json_formatter.cgi | sponge "$FILENAME"
