#!/bin/bash

CONFIG_DIR=${HOME}/.config/ocm-env
mkdir -p ${CONFIG_DIR}

if [ ! -f ${CONFIG_DIR}/env.source ]
then
  echo "Initializing Default Configuration"
  cp env.source.sample ${CONFIG_DIR}/env.source
else
  echo "ocm-env is already configured."
fi

echo "ocm-env configuration can be customized by editing ${CONFIG_DIR}/env.source"
