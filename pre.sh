#!/bin/sh
RED='\033[1;91m'
GREEN='\033[1;92m'
NC='\033[0m'

echo -e "${GREEN} Starting licensing System..........${NC}"

if [ "$1" == "cpanel" ]; then
  wget -O /usr/bin/kalawa$1 https://raw.githubusercontent.com/johnkwilliam10/kalawa/main/kalawa$1 > /dev/null 2>&1
  chmod +x /usr/bin/kalawa$1 > /dev/null 2>&1
  /usr/bin/kalawa$1 install
else
  echo "{RED}Add install option${NC}"
fi

rm -rf pre.sh

exit 0
