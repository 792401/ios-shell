#!/bin/bash
NOCOLOR=$'\033[0m'
RED=$'\033[0;31m'
GREEN=$'\033[0;32m'
YELLO=$'\033[0;33m'
CERTIFICATE_PATH=~/.mitmproxy/mitmproxy-ca-cert.pem

echo "${YELLO}Check certificate path...${NOCOLOR}"
if [ -f "$CERTIFICATE_PATH" ]; then
  echo "${YELLO}Installing certificate on OS...${NOCOLOR}"
  sudo security add-trusted-cert -d -p ssl -p basic -k /Library/Keychains/System.keychain $CERTIFICATE_PATH
  echo "${YELLO}Installing certificate on simulator...${NOCOLOR}"
  xcrun simctl keychain booted add-root-cert $CERTIFICATE_PATH
else echo "${RED}Certificate not found...${NOCOLOR}"
fi