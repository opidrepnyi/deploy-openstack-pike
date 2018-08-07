#!/bin/bash

SCRIPT_DIR=`dirname $0`
cd ${SCRIPT_DIR}

virsh net-destroy virbr-tenant 
virsh net-undefine virbr-tenant

virsh net-list --all
