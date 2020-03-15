#!/usr/bin/env bash
source env.sh
rm -rf "$DFL_WORKSPACE"
mkdir -p "$DFL_WORKSPACE"
mkdir -p "$DFL_WORKSPACE/data_src/aligned"
mkdir -p "$DFL_WORKSPACE/data_dst/aligned"
mkdir -p "$DFL_WORKSPACE/model"
