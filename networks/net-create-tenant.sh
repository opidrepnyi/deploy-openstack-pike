#!/bin/bash

SCRIPT_DIR=`dirname $0`
cd ${SCRIPT_DIR}

virsh net-define virbr-tenant.xml
virsh net-autostart virbr-tenant
virsh net-start virbr-tenant

virsh net-list --all
