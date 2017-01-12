#!/bin/bash
#
# This is the MAKE script which makes PHP and other necessary stuffs.
#
# After git-pushing your code to OpenShift, this script will run automatically.
#

export OPENSHIFT_RUNTIME_DIR=${OPENSHIFT_HOMEDIR}/app-root/runtime
export ROOT_DIR=${OPENSHIFT_RUNTIME_DIR}	#CARTRIDGE
export LIB_DIR=${ROOT_DIR}/lib
export CONF_DIR=${OPENSHIFT_REPO_DIR}/conf

export DIST_PHP_VER=5.6.28
export DIST_PHANTOMJS_VER=2.1.1

pushd ${OPENSHIFT_REPO_DIR}/misc

chmod +x make_php
source make_php
check_php

chmod +x get_phantomjs
source get_phantomjs
check_phantomjs

popd
