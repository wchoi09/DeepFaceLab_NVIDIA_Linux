
# Install CentOS 7/8
URL #1: https://linoxide.com/distros/how-to-install-centos/  

## Step 1: Download CentOS 8
URL #2: https://www.centos.org/download/  

## Step 2: Make a bootable device
Format the USB device

### Step 2-1: On Windows
URL #3: https://wiki.centos.org/HowTos/InstallFromUSBkey  
As stated above, applications "unetbootin, multibootusb and universal usb installler" does not work;  
instead, use "Rufus[does not work correctly if the wrong options are chosen], Fedora LiveUSB Creator, Win32 Disk Imager, Rawrite32, dd for Windows"  

### Step 2-2: On MacOS
URL #4: https://docs.centos.org/en-US/8-docs/standard-install/assembly_preparing-for-your-installation/  
in the terminal, type:  
<pre>
sudo dd if=<b>/path/to/image.iso</b> of=/dev/rdisk<b>#</b> bs=4m
</pre>
replace "/path/to/image.iso" with the actual directory, and # with the actual drive number

### Step 2-3: On Linux
in the terminal, type:
<pre>
sudo dd if=<b>/path/to/image.iso</b> of=/dev/<b>device</b> bs=4m
</pre>
similar to MacOS,  
replace "/path/to/image.iso" with the full path to the ISO image file, and replace "device" with the device name  


## Step 3: Start with the installation process
Insert the USB device and then boot  
Choose and hit enter:  
```sh
Install CentOS Linux x.x.xxxx
```

## Step 4: Choose the language for the installation
English, English (United States)

## Step 5: Summary Page
Keyboard: English(US)  
Language Support: English (United States)  
Time & Date: your preference  
Installation Source: Local Media  
Software Selection: Server with GUI, Container Management, Developer Tools, Graphical Admin Tools  
Installation Destination: where you want it to be installed (becareful, it will wipe data) (Automatic Partitioning)  
KDUMP: backup system, I disabled it in my case.  

## Step 6: Configure the network and hostname
Make sure you are connected to the internet so that we will be able to install some features later during the process  

## Step 7: Begin the installation

## Step 8: Create your user account
Full name is optional  
Tick "Make this user administrator"  
Tick "Require a password to use this account"  

## Step 9: Configure the root password

## Step 10: Reboot and accept the license agreement

## Step 11: Log in your new system
Confirm  
Done!  
