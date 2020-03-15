source ~/anaconda3/etc/profile.d/conda.sh 2> /dev/null
conda activate deepfacelab 2> /dev/null

export INTERNAL=$(cd .. && cd _internal && pwd)
export DFL_PYTHON="python3.6"
export DFL_WORKSPACE="$INTERNAL/../workspace/"
export DFL_ROOT="$INTERNAL/DeepFaceLab"

if [ ! -d "$DFL_WORKSPACE" ]; then
    mkdir -p "$DFL_WORKSPACE"
    mkdir -p "$DFL_WORKSPACE/data_src/aligned"
    mkdir -p "$DFL_WORKSPACE/data_dst/aligned"
    mkdir -p "$DFL_WORKSPACE/model"
fi
