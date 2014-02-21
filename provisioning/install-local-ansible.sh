#!/bin/bash

# This is a bash script to do the bare minimum required to run ansible playbooks
# Note that commands below should be idempotent to the best of our ability!

echo Starting $0

# Note - the && syntax guarantees that we abort if we hit an error
sudo apt-get update && \
# Dependencies to install/run ansible, python-yaml might be installed, but
# better to be safe!
sudo apt-get -y install python-pip python-paramiko python-jinja2 python-httplib2 python-yaml  && \
sudo pip install ansible
