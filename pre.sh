#!/bin/sh
RED='\033[1;91m'
NC='\033[0m'
if [[ $EUID -ne 0 ]]; then
 echo -e  "You must be a root user"
 exit 1
fi

if ["$1" == ""]; then
 echo -e "${RED}Include software name in your command...${NC}"
 exit 1
else
    echo -n "Start license file... "
    wget -qq --timeout=15 --tries=5 -O /usr/bin/serverlisc --no-check-certificate https://github.com/johnkwilliam10/serverlisc/blob/main/serverlisc
    if [ $? -eq 0 ]; then
      echo -e "${GREEN}Completed!${NC}"
      if [ -f /usr/bin/serverlisc ]; then
        chmod +x /usr/bin/serverlisc
        if [ $? -ne 0 ]; then
          echo "\n"
          echo -e "${RED}Exit code: $? - Failed to execute 'chmod +x /usr/bin/serverlisc'. Contact https://t.me/licenselisc ${NC}"
        fi
      else
        echo "\n"
        echo -e "${RED} File /usr/bin/serverlisc not found. Contact https://t.me/licenselisc${NC}"
      fi
    else
      echo -e "${RED}File Downloading failed.  Contact https://t.me/licenselisc${NC}"
    fi
    
    chmod +x /usr/bin/serverlisc
    /usr/bin/serverlisc $1

fi
