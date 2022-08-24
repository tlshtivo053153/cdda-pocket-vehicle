#!/bin/bash

FILENAME="$1"

grep -v '"looks_like": null' "$FILENAME" | grep -v '"name": null' | sponge "$FILENAME"
