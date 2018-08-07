#!/bin/bash

SCRIPT_DIR=`dirname $0`
cd ${SCRIPT_DIR}

virsh net-define virbr-public.xml
virsh net-autostart virbr-public
virsh net-start virbr-public

virsh net-list --all
