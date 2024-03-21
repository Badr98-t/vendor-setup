#!/bin/bash
BGreen='\033[1;32m'
Cyan='\033[0;36m'
Blue='\033[0;34m'
BIGreen='\033[1;92m'
NC='\033[0m'

#Clone rom
#echo -e "${BIGreen}Cloning Rom${NC}"
#repo init --depth=1 --no-repo-verify -u https://github.com/RisingOS-staging/android -b fourteen-staging  --git-lfs -g default,-mips,-darwin,-notdefault
#repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
#if [ $? -ne 0 ]; then
#echo "First Sync failed. Aborting."
#        exit 1
#fi


# Device Tree
if [[ -d "device/realme/bitra" ]]; then
echo -e "${BIGreen}Dt Present${NC}"
echo ""
else
echo -e "${Cyan}Dt  not present, cloning Device tree${NC}"
git clone https://github.com/Badr98-t/device-realme-bitra-private -b SUPERIOR  device/realme/bitra
fi

echo ""

# Common Device Tree
if [[ -d "device/realme/sm8250-common" ]]; then
echo -e "${BIGreen}Common Present${NC}"
echo ""
else
echo -e "${Cyan}Common tree is not present, cloning Device tree${NC}"
git clone https://github.com/Badr98-t/device-realme-sm8250  device/realme/sm8250-common
fi

echo ""

# Kernel
if [[ -d "kernel/realme/sm8250" ]]; then
echo -e "${BIGreen}Kernel Present${NC}"
echo ""
else
echo -e "${Cyan}Kernel is not present, cloning Device tree${NC}"
git clone https://github.com/Badr98-t/kernel-realme-bitra kernel/realme/sm8250
fi

echo ""

# Common Vendor Tree
if [[ -d "vendor/realme/sm8250-common" ]]; then
echo -e "${BIGreen}Vendor present${NC}"
echo ""
else
echo -e "${Cyan}Vendor is not present, cloning Vendor${NC}"
git clone https://github.com/Badr98-t/vendor_realme_sm8250  vendor/realme/sm8250-common
fi

echo ""

# Device Vendor Tree
if [[ -d "vendor/realme/bitra" ]]; then
echo -e "${BIGreen}Vendor present${NC}"
echo ""
else
echo -e "${Cyan}Vendor is not present, cloning Vendor${NC}"
git clone https://github.com/Badr98-t/vendor_realme_bitra  vendor/realme/bitra
fi

echo ""

# HW Oplus
if [[ -d "hardware/oplus" ]]; then
echo -e "${BIGreen}Hw oplus folder is present${NC}"
echo ""
else
echo -e "${Cyan}Hw OP is not present, cloning Vendor${NC}"
git clone https://github.com/Badr98-t/android_hardware_oplus--realme.git hardware/oplus
fi

echo ""

# DeviceExtras
if [[ -d "packages/apps/DeviceExtras" ]]; then
echo -e "${BIGreen}Hw oplus folder is present${NC}"
echo ""
else
echo -e "${Cyan}Hw OP is not present, cloning Vendor${NC}"
git clone https://github.com/Badr98-t/packages_apps_DeviceExtras packages/apps/DeviceExtras
fi

echo ""
# oplus camera 
if [[ -d "vendor/oplus/camera" ]]; then 
echo -e "${BIGreen}Hw oplus folder is present${NC}"
echo ""
else
echo -e "${Cyan}Hw OP is not present, cloning Vendor${NC}"
git clone https://gitlab.com/pjgowtham/proprietary_vendor_oplus_camera -b lineage-21 vendor/oplus/camera
fi
