#!/usr/bin/env bash

THE_TARGET_DIR_PATH="$(pwd)"
THE_ISO_BUILD_SYSTEM_DIR_PATH="/opt/ezarcher-adjustment/iso-build-system"

sudo mkdir -p "${THE_ISO_BUILD_SYSTEM_DIR_PATH}"
sudo chmod 777 "${THE_ISO_BUILD_SYSTEM_DIR_PATH}"


cd "${THE_ISO_BUILD_SYSTEM_DIR_PATH}"

test -e ezarcher-adjustment-packaging || ln -sf "${THE_TARGET_DIR_PATH}/ezarcher-adjustment-packaging" ezarcher-adjustment-packaging
test -e ezarcher-adjustment-repository || ln -sf "${THE_TARGET_DIR_PATH}/ezarcher-adjustment-repository" ezarcher-adjustment-repository
test -e ezarcher-adjustment-iso-profile || ln -sf "${THE_TARGET_DIR_PATH}/ezarcher-adjustment-iso-profile" ezarcher-adjustment-iso-profile

file $(ls -1)

cd "${OLDPWD}"



