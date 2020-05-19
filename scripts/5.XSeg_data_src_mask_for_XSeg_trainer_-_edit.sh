#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_ROOT/main.py" xseg editor \
    --input-dir "$DFL_WORKSPACE/data_src/aligned"

if [ $? -ne 0]; then
    read -n1
fi

