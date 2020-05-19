#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_ROOT/main.py" videoed denoise-image-sequence \
    --input-dir "$DFL_WORKSPACE/data_dst"

