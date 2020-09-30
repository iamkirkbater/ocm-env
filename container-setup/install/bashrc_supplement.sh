#!/bin/bash

source /usr/local/kube_ps1/kube-ps1.sh
source ${HOME}/.config/env.source
complete -C '/usr/local/aws/aws/dist/aws_completer' aws

function cluster_function() {
  oc config view  --minify --output 'jsonpath={..server}' | cut -d. -f2-4
}

function ocm_environment() {
	# based on how ocm-cli works for now, when the default change we will go with it
	export ENV_OCM_URL=${OCM_URL:-production}
	echo "{$(tput setaf 2) ${ENV_OCM_URL}$(tput sgr0)}"
}

# Login on entry
ocm-login
