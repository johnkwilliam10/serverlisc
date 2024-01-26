#!/bin/sh
RED='\033[1;91m'
GREEN='\033[1;92m'

echo -e "${GREEN} Downloading licensing System..........${NC}"

if [ "$1" == "cpanel" ]; then
  /bin/kalawa$1 install
else
  echo "{RED}Add install option${NC}"
fi

rm -rf pre.sh

exit 0
