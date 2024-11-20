#!/bin/bash
#
# This demo has been built on UBI9 podman container. Before running it, the following script needs
# to be executer on the container.
#
subscription-manager refresh
dnf install -y java-17-openjdk-devel ansible-rulebook unzip tar iproute sed sudo tzdata-java ansible-core unzip
ansible-galaxy collection install ansible.eda middleware_automation.wildfly
alternatives --set java java-17-openjdk.x86_64
dnf remove -y java-11-openjdk-headless
