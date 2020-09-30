#!/bin/bash -e

if [ "$1" != "I-am-in-container" ]; then
  echo "must be run in container";
  exit 1;
fi

echo "in container";

#export osdctlversion=v0.1.0

mkdir /usr/local/osdctl;
pushd /usr/local/osdctl;
wget -q https://github.com/openshift/osd-utils-cli/releases/download/${osdctlversion}/osdctl-linux;
mv osdctl{-linux,}
chmod +x osdctl
ln -s /usr/local/osdctl/osdctl /usr/local/bin/osdctl;
osdctl completion bash > /etc/bash_completion.d/osdctl;
popd;
