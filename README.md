# Install DeepFaceLab
**Note:** This installation method uses Anaconda to install DFL on Centos 7/8 or Ubuntu 18.04  
To install CentOS, refer [here](install_CentOS.md)

## Step 0: Preparation
Installing NVIDIA drivers and necessary packages.  
Navigate to <b>`downloads`</b> directory and run:

<details><summary>CentOS</summary>

```sh
cd downloads
bash 1_CentOS_install_dependencies.sh
```
</details>
    
<details><summary>Ubuntu</summary>

```sh
cd downloads
bash 1_Ubuntu_install_dependencies.sh
```
</details>
    

## Step 1: Install Anaconda
URL #4: https://www.anaconda.com/distribution/#linux  
URL #5: https://docs.anaconda.com/anaconda/install/linux/

**Note:** Download Python 3.7 version (at the time of writing: 03/13/2020)  
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


## Step 2: Install DeepFaceLab
Create the DeepFaceLab environment with the following libraries.  
Enter the following in the terminal:  
```sh
conda create -n deepfacelab -c main python=3.6.8 cudnn=7.6.5 cudatoolkit=10.0.130
```

Activate the environment  
```sh
conda activate deepfacelab
```

_Navigate to DeepFaceLab_Linux directory_
```sh
cd DeepFaceLab_Linux
```

Install Python Dependencies
```sh
python3 -m pip install -r ./requirements-cuda.txt  
```


## Step 3: Download CelebA Dataset
URL #6: https://drive.google.com/drive/folders/17a9b9zmLdnAlItifcGSE9ixDIDAT3YxP  
Download the latest NVIDIA build from the main repo for Windows  
Extract the build and go into the _internal folder. 
```sh
7z x DeepFaceLab_NVIDIA_build_XX_XX_XXX.exe
```
Copy both pretrain_CelebA and Pretrain_Quick96 to the directory DeepFaceLab_Linux/


## Step 4: Navigate to the scripts directory and begin using DeepFaceLab_Linux

