#!/bin/bash

sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

function generate_and_copy_ssh_key ()
{
        local _home_folder=$1
        ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
        cat ~/.ssh/id_rsa.pub >> $_home_folder/.ssh/authorized_keys
}

function configure_ssh()
{
        local _user=$1
        local _home_folder=$(grep ${_user} /etc/passwd | awk -F: '{print $6}')
        mkdir $_home_folder/.ssh/
        chown -R ${_user}:${_user} $_home_folder/.ssh/
        generate_and_copy_ssh_key $_home_folder


}

function add_user_for_ansible()
{
        local _user=$1
        useradd $_user
        echo $_user | passwd --stdin $_user
        echo "$_user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$_user
        configure_ssh $_user
}

add_user_for_ansible "hila"
