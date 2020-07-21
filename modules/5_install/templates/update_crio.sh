#!/bin/bash

crio_conf=$(cat ~/openstack-upi/crio.conf | python3 -c "import sys, urllib.parse; print(urllib.parse.quote(''.join(sys.stdin.readlines())))")

cat << EOF > /tmp/51-worker-cp4d-crio-conf.yaml
apiVersion: machineconfiguration.openshift.io/v1
kind: MachineConfig
metadata:
 labels:
   machineconfiguration.openshift.io/role: worker
 name: 51-worker-cp4d-crio-conf
spec:
 config:
   ignition:
     version: 2.2.0
   storage:
     files:
     - contents:
         source: data:,${crio_conf}
       filesystem: root
       mode: 0644
       path: /etc/crio/crio.conf
EOF

oc create -f /tmp/51-worker-cp4d-crio-conf.yaml
