#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/fw876/helloworld.git --depth=1 ./tmp/helloworld
rm -rf ./package/lean/luci-app-ssr-plus && cp -rf ./tmp/helloworld/luci-app-ssr-plus ./package/lean/
rm -rf ./package/lean/tcping && cp -rf ./tmp/helloworld/tcping ./package/lean/
rm -rf ./package/lean/naiveproxy && cp -rf ./tmp/helloworld/naiveproxy ./package/lean/
rm -rf ./package/lean/xray-core && cp -rf ./tmp/helloworld/xray-core ./package/lean/
rm -rf ./package/lean/xray-plugin && cp -rf ./tmp/helloworld/xray-plugin ./package/lean/
rm -rf ./package/lean/shadowsocks-rust && cp -rf ./tmp/helloworld/shadowsocks-rust ./package/lean/
rm -rf ./package/lean/v2ray-core && cp -rf ./tmp/helloworld/v2ray-core ./package/lean/
rm -rf ./package/lean/v2ray-plugin && cp -rf ./tmp/helloworld/v2ray-plugin ./package/lean/
rm -rf ./package/lean/shadowsocksr-libev && cp -rf ./tmp/helloworld/shadowsocksr-libev ./package/lean/
       
