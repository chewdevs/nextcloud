#!/usr/bin/bash

echo "Please enter your OpenStack Password for project $OS_PROJECT_NAME as user $OS_USERNAME: "
read -sr OS_PASSWORD_INPUT
export TF_VAR_os_password=$OS_PASSWORD_INPUT
