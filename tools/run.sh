#!/bin/bash

find ./pocket_vehicle/vehicleparts/ -name '*.json' | xargs -I {} ./tools/jq_filter_not_abstract.sh {}
find ./pocket_vehicle/vehicleparts/ -name '*.json' | xargs -I {} ./tools/jq_filter_type_vehicle_part.sh {}
find ./pocket_vehicle/vehicleparts/ -name '*.json' | xargs -I {} ./tools/jq_foldable_to_1ml.sh {}
find ./pocket_vehicle/vehicleparts/ -name '*.json' | xargs -I {} ./tools/jq_unfoldable_to_250ml.sh {}
find ./pocket_vehicle/vehicleparts/ -name '*.json' | xargs -I {} ./tools/jq_extend_flags_foldable.sh {}
find ./pocket_vehicle/vehicleparts/ -name '*.json' | xargs -I {} ./tools/jq_copyfrom.sh {}
find ./pocket_vehicle/vehicleparts/ -name '*.json' | xargs -I {} ./tools/grep_not_null.sh {}
