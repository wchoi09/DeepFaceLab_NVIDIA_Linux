#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_ROOT/main.py" xseg remove \
    --input-dir "$DFL_WORKSPACE/data_src/aligned"
