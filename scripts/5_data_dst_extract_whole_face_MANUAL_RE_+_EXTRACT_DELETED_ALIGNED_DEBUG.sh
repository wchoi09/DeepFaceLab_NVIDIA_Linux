#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_ROOT/main.py" extract \
    --input-dir "$DFL_WORKSPACE/data_dst" \
    --output-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --detector manual \
    --output-debug \
    --manual-output-debug-fix \
    --face-type whole_face

