#!/bin/sh
BOLD='\033[1m'
CYAN='\033[0;36m'
LIGHT_RED='\033[1;31m'
GREEN='\033[0;32m'
DEFAULT='\033[0m'

echo_install_text()
{
  echo "${CYAN}==>${DEFAULT} ${BOLD}Installing ${GREEN}$1${DEFAULT}"
}