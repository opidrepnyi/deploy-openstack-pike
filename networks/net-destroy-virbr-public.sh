#!/bin/bash

SCRIPT_DIR=`dirname $0`
cd ${SCRIPT_DIR}

virsh net-destroy virbr-public 
virsh net-undefine virbr-public

virsh net-list --all
