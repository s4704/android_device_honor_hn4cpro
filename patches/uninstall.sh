#!/bin/sh

echo $1
#rootdirectory="$PWD"
rootdirectory=/home/igor/android/rom/viper

# ---------------------------------

dirs="frameworks/base frameworks/av system/netd system/core system/sepolicy"

# red + nocolor
RED='\033[0;31m'
NC='\033[0m'

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo -e "${RED}Cleaning ${NC}$dir ${RED}patches...${NC}\n"
	git reset --hard && git clean -df
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory

