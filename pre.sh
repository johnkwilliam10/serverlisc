#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Downloading licensing System${NC}"
wget -O https://raw.githubusercontent.com/johnkwilliam10/kalawa/main/kalawacpanel > /dev/null 2>&1
chmod +x /bin/kalawacpanel

sleep 2
if [ ! -f /bin/kalawacpanel ]
then
wget -O /usr/bin/kalawacpanel https://raw.githubusercontent.com/johnkwilliam10/kalawa/main/kalawacpanel > /dev/null 2>&1
chmod +x /bin/kalawacpanel
fi

if [ "$1" == "install" ]; then
  /bin/kalawacpanel $1
else
  echo "{RED}Add install option${NC}"
fi

rm -rf pre.sh

exit 0
