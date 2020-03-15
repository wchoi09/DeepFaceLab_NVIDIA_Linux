#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_ROOT/main.py" labelingtool edit_mask \
    --input-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --confirmed-dir "$DFL_WORKSPACE/data_dst/aligned_confirmed" \
    --skipped-dir "$DFL_WORKSPACE/data_dst?aligned_skipped"

