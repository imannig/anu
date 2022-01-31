#!/bin/bash
cd /tmp/rom

. build/envsetup.sh
lunch lineage_juice-userdebug
export BUILD_USERNAME=lynx
export BUILD_HOSTNAME=serber-memek
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 20G
ccache -o compression=true
ccache -z
mka bacon -j8
