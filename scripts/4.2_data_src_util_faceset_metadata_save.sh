#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_ROOT/main.py" util \
    --input-dir "$DFL_WORKSPACE/data_src/aligned" \
    --save-faceset-metadata

