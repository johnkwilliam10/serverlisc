#!/bin/sh

YELLOW='\033[1;93m' #yellowcolor  # change it, according to the color need
RED='\033[1;91m'
GREEN='\033[1;92m'
CYAN='\033[1;96m'
HIDE='\033[8m'
NC='\033[0m'

echo -e "${GREEN} Downloading licensing System..........${NC}"

if [ "$1" == "cpanel" ]; then
  /bin/kalawa$1 install
else
  echo "{RED}Add install option${NC}"
fi

rm -rf pre.sh

exit 0
