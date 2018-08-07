#!/bin/bash

SCRIPT_DIR=`dirname $0`
cd ${SCRIPT_DIR}

virsh net-destroy virbr-managment 
virsh net-undefine virbr-managment

virsh net-list --all
