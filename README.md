# Install DeepFaceLab on CentOS
**Note:** This installation method uses Anaconda to install DFL on Centos 7/8

## Step 0: Preparing the system
URL #1: https://www.tecmint.com/install-epel-repository-on-centos/  
URL #2: https://computingforgeeks.com/how-to-install-epel-repository-on-rhel-8-centos-8/

Install EPEL which is a repo of extra packages for CentOS
```sh
sudo dnf -y install epel-release
sudo dnf config-manager --set-enabled PowerTools
```

Confirm EPEL installation
```sh
sudo dnf repolist epel
```

## Step 1: Update the OS
URL #3: https://www.tecmint.com/things-to-do-after-minimal-rhel-centos-7-installation/#C4  
```sh
sudo dnf check-update
sudo dnf -y update
```


## Step 2: Install Anaconda
URL #4: https://www.anaconda.com/distribution/#linux  
URL #5: https://docs.anaconda.com/anaconda/install/linux/

### Step 2-1: Prerequisites
Install the following packages
```sh
sudo dnf -y install libXcomposite libXcursor libXi libXtst libXrandr alsa-lib mesa-libEGL libXdamage mesa-libGL libXScrnSaver
```

### Step 2-2: Download Python 3.7 version (at the time of writing: 03/13/2020)
Through the terminal, locate to the downloaded directory and enter the following to install Anaconda for Python 3.7:
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


## Step 3: Install DeepFaceLab
Create the DeepFaceLab environment with the following libraries.  
Enter the following in the terminal:  
```sh
conda create -n deepfacelab -c main python=3.6.8 cudnn=7.6.5 cudatoolkit=10.0.130
```

Activate the environment  
```sh
conda activate deepfacelab
```

Clone the repo
```sh
git clone https://github.com/lbfs/DeepFaceLab_Linux.git
cd DeepFaceLab_Linux
git clone https://github.com/iperov/DeepFaceLab.git
```

Install dependencies
> Originally, you could install by:
> ```sh
> python3 -m pip install -r ./DeepFaceLab/requirements-cuda.txt  
> ```
> but we will install dependencies manually.  

Install dependencies manually:
Note the specified version for tensorflow-gpu
```sh
python3 -m pip install tqdm, numpy, h5py, opencv-python, ffmpeg-python, scikit-image, scipy, colorama, tensorflow-gpu==1.13.2
```


## Step 4: Download CelebA Dataset
Download the latest NVIDIA build from the main repo for Windows  
Extract the build and go into the _internal folder. 
```sh
7z x DeepFaceLab_NVIDIA_build_XX_XX_XXX.exe
```
Copy both pretrain_CelebA and Pretrain_Quick96 to the directory DeepFaceLab_Linux/


## Step 5: Navigate to the scripts directory and begin using DeepFaceLab_Linux

