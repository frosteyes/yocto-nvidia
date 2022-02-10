Sample Yocto Project for building image to Nvidia Jetson AGX Xavier developer kit
=============================================
This repository provides an example core-image-sato / core-image-minimal with 
cuda-samples for testing on [Jetson AGX Xavier developent](https://developer.nvidia.com/embedded/jetson-agx-xavier-developer-kit).

Before trying to use this, please see yocto project [quick build](https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html)
for setting up a native Linux host for building the image.

Below guide expect that your host machine is setup for yocto build.

All of the recipes in this git repo is released under MIT.

Getting Started
---------------
**1.  Clone this repo.**

    $ git clone --recurse-submodules https://github.com/frosteyes/yocto-nvidia.git

**2.  Setup yocto.**

Source the setup script. Optional select a build folder. If no build folder is 
selected a standard folder named *build*:

    $ cd yocto-nvidia
    $ source setup_agx_xavier build_master

After you have sourced the setup, please look into the *conf/local.conf* file.
Specifically the variables **DL_DIR** and **SSTATE_DIR** is relevant to save
downloads for later, and prebuild in sstate cache.

**3.  Build image.**

Run bitbake - here we just selet the basic image:

    $ bitbake core-image-sato

First time it takes significant time, as it need to download all the source 
code, compile the host tools and next the complete linux image.

**4.  Run the image on target.**

Todo - describe how to connect serial / USB for upload image to eMMC of kit
