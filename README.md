# Install DeepFaceLab
**Note:** This installation method uses Anaconda to install DFL on Centos 7/8 or Ubuntu 18.04  
To install CentOS, refer [here](install_CentOS.md)

**Note:** The directory structure is important.  
This is how the project tree will look like:  
```bash
DeepFaceLab_NVIDIA_Linux
|-- _internal               
|   |-- DeepFaceLab         # Created via git clone command (Step #2)
|   |-- pretrain_CelebA     # Manually copied after extracting .EXE (Step #3)
|   `-- pretrain_Quick96    # Manually copied after extracting .EXE (Step #3)
|-- install_script          # Created via git clone command (Step #0)
|-- scripts                 # Created via git clone command (Step #0)
`-- workspace               # Created through one of the scripts in /scripts
```

## Step #0: Preparation
Clone this repository  
```sh
git clone https://github.com/jwchoi09/DeepFaceLab_NVIDIA_Linux.git
cd DeepFaceLab_NVIDIA_Linux
```

### Step #0-1: Install NVIDIA driver and Dependencies
Navigate to <b>`DeepFaceLab_NVIDIA_Linux/install_script`</b> directory and run:
<ol type="a">
    <li><b>CentOS:</b><pre>bash 1_CentOS_install_dependencies.sh</pre>  
    <li><b>Ubuntu:</b><pre>bash 1_Ubuntu_install_dependencies.sh</pre>
</ol>


## Step #1: Install Anaconda
URL #4: https://www.anaconda.com/distribution/#linux  
URL #5: https://docs.anaconda.com/anaconda/install/linux/

**Note:** Download Python 3.7 version (at the time of writing: 03/16/2020)  
Through the terminal, locate where Anaconda was downloaded and run the following:  
```sh
bash Anaconda3-2020.02-Linux-x86_64.sh
```

The installer prompts "In order to continue the installation process, please review the license agreement."  
Click Enter to view license terms.  
Scroll to the bottom of the license terms and enter "Yes" to agree.  
Accept the default install location.  
Type "yes" to the prompt, "Do you wish the installer to initialize Anaconda3 by running conda init?"  
Close and open your terminal window for the installation to take effect, or you can enter the command:  
```sh
source ~/.bashrc
```


## Step #2: Install DeepFaceLab_NVIDIA
Create the DeepFaceLab environment with the following libraries.  
Enter the following in the terminal:  
```bash
conda create -n deepfacelab -c main python=3.6.8 cudnn=7.6.5 cudatoolkit=10.0.130
```

Activate the environment  
```bash
conda activate deepfacelab
```

Navigate to `_internal` directory in `DeepFaceLab_NVIDIA_Linux`  
```sh
cd DeepFaceLab_NVIDIA_Linux/_internal
```

Install Python Dependencies
```sh
python3 -m pip install -r ./DeepFaceLab/requirements-cuda.txt  
```

Clone DeepFaceLab from the main repository to the `_internal` directory  
```sh
git clone https://github.com/iperov/DeepFaceLab.git
```

## Step #3: Download CelebA Dataset and Quick96 Model

Download the latest NVIDIA build(.EXE) from the main repo for Windows  
To download, refer to the Google Drive link provided in here: https://github.com/iperov/DeepFaceLab/  
Extract the build and go into the `_internal` folder.  
```sh
7z x DeepFaceLab_NVIDIA_build_XX_XX_XXX.exe
```

Copy both `pretrain_CelebA` and `pretrain_Quick96` to the directory `DeepFaceLab_NVIDIA_Linux/_internal/`  


## Step #4: Navigate to the scripts directory and begin using DeepFaceLab

