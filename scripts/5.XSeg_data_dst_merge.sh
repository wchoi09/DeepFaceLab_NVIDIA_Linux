#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_ROOT/main.py" xseg merge \
    --input-dir "$DFL_WORKSPACE/data_dst/aligned"

