#!/bin/bash -e

if [ "$1" != "I-am-in-container" ]; then
  echo "must be run in container";
  exit 1;
fi

echo "in container";

export moactlversion=v0.0.5
./install-moactl.sh $1

./install-ocm.sh $1

#export osv4client=openshift-client-linux-4.3.5.tar.gz
./install-oc.sh $1

export awsclient=awscli-exe-linux-x86_64.zip
./install-aws.sh $1

./install-kube_ps1.sh $1

export osdctlversion=v0.1.0
./install-osdctl.sh $1

./install-bashconfig.sh $1

./install-utils.sh $1
