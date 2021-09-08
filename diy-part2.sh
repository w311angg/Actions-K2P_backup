#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

sed -i "s/enable '0'/enable '1'/g" package/dns2tcp/files/dns2tcp.config

sed -i "s/enable '0'/enable '1'/g" package/chinadns-ng/files/chinadns-ng.config
sed -i "s/bind_addr '0.0.0.0'/bind_addr '127.0.0.1'/g" package/chinadns-ng/files/chinadns-ng.config
sed -i "s/bind_port '5353'/bind_port '5335'/g" package/chinadns-ng/files/chinadns-ng.config
