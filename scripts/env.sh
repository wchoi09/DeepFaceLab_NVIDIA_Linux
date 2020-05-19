source ~/anaconda3/etc/profile.d/conda.sh 2> /dev/null
conda activate deepfacelab 2> /dev/null

# ========== BASE ENV ==========
export INTERNAL=$(cd .. && cd _internal && pwd)


# ========== PYTHON ENV ==========
export DFL_PYTHON="python3.6"

# ========== CUDA ENV ==========

# ========== ADDITIONAL ENV ==========
export DFL_WORKSPACE="$INTERNAL/../workspace/"
export DFL_ROOT="$INTERNAL/DeepFaceLab"
export TF_MIN_REQ_CAP=30


if [ ! -d "$DFL_WORKSPACE" ]; then
    mkdir -p "$DFL_WORKSPACE"
    mkdir -p "$DFL_WORKSPACE/data_src/aligned"
    mkdir -p "$DFL_WORKSPACE/data_dst/aligned"
    mkdir -p "$DFL_WORKSPACE/model"
fi
