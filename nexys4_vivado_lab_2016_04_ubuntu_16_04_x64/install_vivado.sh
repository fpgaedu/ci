#!/bin/sh -ex
# Installer archive is copied to /tmp/vivado_lab_installer.tar.tg by file 
# provisioner. Extract archive contents into tmp dir.
mkdir /tmp/vivado_lab_installer/
tar -xzf $VIVADO_INSTALLER -C /tmp/vivado_lab_installer/

# Execute setup using configuration file. Install into 
/tmp/vivado_lab_installer/Xilinx_Vivado_Lab_Lin_2016.4_0124_1/xsetup --agree 3rdPartyEULA,WebTalkTerms,XilinxEULA --batch Install --config /vagrant/install_config.txt --location /home/ubuntu/Xilinx/

cp /vagrant/.bashrc ~/.bashrc
