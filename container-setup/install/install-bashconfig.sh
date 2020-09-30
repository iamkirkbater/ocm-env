#!/bin/bash -e

if [ "$1" != "I-am-in-container" ]; then
  echo "must be run in container";
  exit 1;
fi

echo "in container";

cat ./bashrc_supplement.sh >> ~/.bashrc

