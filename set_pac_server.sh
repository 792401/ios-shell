#!/bin/bash
NOCOLOR=$'\033[0m'
RED=$'\033[0;31m'
GREEN=$'\033[0;32m'
YELLO=$'\033[0;33m'
PAC_URL=http://localhost:3001/proxy.pac
echo "${YELLO}Setting PAC URL: ${PAC_URL}...${NOCOLOR}"
networksetup -setautoproxyurl "Wi-Fi" "${PAC_URL}"