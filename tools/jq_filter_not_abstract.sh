#!/bin/bash

FILENAME="$1"

cat "$FILENAME" | jq 'map(select(.abstract | not))' | json_formatter.cgi | sponge "$FILENAME"
