# "By hand"

## Prior to installing base OS

Note: You need to do some of the below in the settings dialogue after creating
the VM in VirtualBox.

 - 1024 MB RAM
 - port forwarding 2222 (host) -> 22 (guest)
 - Bump video memory to max, enable 3D accel
 - 1 CPU (for now)
 - Prepping for 32 bit
 - Enable bidirectional clipboard (may only be possible after extensions are
   installed)

## Install OS

 - vanilla Xubuntu (relatively light, handles virtual graphics resize well)
 - 'ct' as user
 - auto-login

## Install VB Extensions & git

 - apt-get install dkms git
 - run installer (mount CD via VB GUI)

# Auto-provisioning

 - git clone https://github.com/oroeco/oroeco_analytics.git
 - cd oroeco_analytics/provisioning
 - sudo ./install-local-ansible.sh
 - sudo ./run-local-ansible.sh

To bring the machine up-to-date with changes in the ansible playbooks, simply
re-run that last command!

# Saving that work

Simply File->Export from VirtualBox, using v1.0 OVA format.
