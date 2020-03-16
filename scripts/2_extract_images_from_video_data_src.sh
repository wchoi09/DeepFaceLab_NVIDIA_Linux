#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_ROOT/main.py" videoed extract-video \
    --input-file "$DFL_WORKSPACE/data_src.*" \
    --output-dir "$DFL_WORKSPACE/data_src"

