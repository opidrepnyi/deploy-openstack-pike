#!/bin/bash

SCRIPT_DIR=`dirname $0`
cd ${SCRIPT_DIR}

virsh net-define virbr-managment.xml
virsh net-autostart virbr-managment
virsh net-start virbr-managment

virsh net-list --all
