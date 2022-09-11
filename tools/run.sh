#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

find ./ -not -name 'modinfo.json' -name '*.json' | xargs -I {} "$SCRIPT_DIR/jq_filter_not_abstract.sh" {}
find ./ -not -name 'modinfo.json' -name '*.json' | xargs -I {} "$SCRIPT_DIR/jq_filter_type_vehicle_part.sh" {}
find ./ -not -name 'modinfo.json' -name '*.json' | xargs -I {} "$SCRIPT_DIR/jq_foldable_to_1ml.sh" {}
find ./ -not -name 'modinfo.json' -name '*.json' | xargs -I {} "$SCRIPT_DIR/jq_unfoldable_to_250ml.sh" {}
find ./ -not -name 'modinfo.json' -name '*.json' | xargs -I {} "$SCRIPT_DIR/jq_extend_flags_foldable.sh" {}
find ./ -not -name 'modinfo.json' -name '*.json' | xargs -I {} "$SCRIPT_DIR/jq_copyfrom.sh" {}
find ./ -not -name 'modinfo.json' -name '*.json' | xargs -I {} "$SCRIPT_DIR/grep_not_null.sh" {}
