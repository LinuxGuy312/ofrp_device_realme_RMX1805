#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.

wget -qO $(pwd)/OFoxAvatar.png https://i.postimg.cc/85qM200Z/OFox-Avatar.png

export \
       FOX_VERSION=R11.1_1 \
       OF_MAINTAINER="Eren (@WH0907)" \
       OF_MAINTAINER_AVATAR="$(pwd)/OFoxAvatar.png" \
       OF_SCREEN_H=2280 \
       OF_STATUS_H=80 \
       OF_STATUS_INDENT_LEFT=48 \
       OF_STATUS_INDENT_RIGHT=48 \
       OF_HIDE_NOTCH=1 \
       OF_ALLOW_DISABLE_NAVBAR=0 \
       TARGET_DEVICE_ALT="RMX1809, RMX1811" \
       OF_TARGET_DEVICES="RMX1805,RMX1809,RMX1811" \
       FOX_TARGET_DEVICES="RMX1805,RMX1809,RMX1811" \
       FOX_DELETE_AROMAFM=1 \
       FOX_ENABLE_APP_MANAGER=1 \
       OF_CLOCK_POS=1
       
latest_tag=$(curl -s https://api.github.com/repos/topjohnwu/Magisk/releases/latest | grep "tag_name" | sed -E 's/.*"([^"]+)".*/\1/'); \
nonv=${latest_tag:1:10};mkdir ~/Magisk;wget -O ~/Magisk/Magisk-$nonv.zip https://github.com/topjohnwu/Magisk/releases/download/$latest_tag/Magisk-$latest_tag.apk --show-progress; \
export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-$nonv.zip
