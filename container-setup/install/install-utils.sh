#!/bin/bash -e

if [ "$1" != "I-am-in-container" ]; then
  echo "must be run in container";
  exit 1;
fi

echo "in container";

mkdir -p ${HOME}/.bin
mkdir -p /etc/profile.d
echo "export PATH=${PATH}:${HOME}/.bin" > /etc/profile.d/localbin.sh
chmod +x /etc/profile.d/localbin.sh

mv ../utils/* ${HOME}/.bin
