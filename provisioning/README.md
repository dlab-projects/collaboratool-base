# "By hand"

## Prior to installing base OS

Note: You need to do some of the below in the settings dialogue after creating
the VM in VirtualBox. For now, we're using 32 bits Xubuntu .

 - 1024 MB RAM
 - Leave default 8 GB of virtual drive
 - 1 CPU (for now)
   installed)
 - Settings dialogue
    - Under Network->Advanced port forwarding:
      2222 (127.0.0.1, host) -> 22 (10.0.2.15, guest)
    - Bump video memory to max, enable 3D accel (2D is currently windows only)

## Install OS

 - vanilla 32-bit Xubuntu (relatively light, handles virtual graphics resize well)
   - Install updates if you've got time / bandwidth
   - DON'T install proprietary
   - Go with default "erase disk" install
 - 'ct' as user
 - login automatically

## Install VB Extensions & git

Now do this *inside the VM*

 - apt-get install dkms git openssh-server
 - run installer (mount CD via VB GUI)
 - Now you can enable bidirectional clipboard in VirtualBox settings

# Auto-provisioning

Also inside the VM.

 - git clone https://github.com/oroeco/oroeco_analytics.git
 - cd oroeco_analytics/provisioning
 - sudo ./install-local-ansible.sh
 - sudo ./run-local-ansible.sh

To bring the machine up-to-date with changes in the ansible playbooks, simply
re-run that last command!

# Saving that work

Simply File->Export from VirtualBox, using v1.0 OVA format.
