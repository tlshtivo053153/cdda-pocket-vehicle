#!/bin/bash

FILENAME="$1"
cat "$FILENAME" | jq 'map(select(.type == "vehicle_part"))' | json_formatter.cgi | sponge "$FILENAME"

