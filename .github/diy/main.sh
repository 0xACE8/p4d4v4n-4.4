#!/bin/bash
function git_clone() {
  git clone --depth 1 $1 $2 || true
 }
function git_sparse_clone() {
  branch="$1" rurl="$2" localdir="$3" && shift 3
  git clone -b $branch --depth 1 --filter=blob:none --sparse $rurl $localdir
  cd $localdir
  git sparse-checkout init --cone
  git sparse-checkout set $@
  mv -n $@ ../
  cd ..
  rm -rf $localdir
  }
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
#git clone --depth 1 https://github.com/0xACE8/0p3nwrt-udp2raw && mvdir 0p3nwrt-udp2raw
git clone --depth 1 https://github.com/vb1980/padavan-4.4 && mvdir padavan-4.4


# patch
#sed -i 's\../../\$(TOPDIR)/feeds/packages/\g' dnscrypt-proxy2/Makefile
#sed -i 's/vpn/services/g' luci-app-easytier/luasrc/controller/easytier.lua
#sed -i 's/, 46)/, 90)/g' luci-app-easytier/luasrc/controller/easytier.lua
#sed -i 's/LUCI_DEPENDS:=/LUCI_DEPENDS:=+kmod-tun +luci-lib-fs/g' luci-app-easytier/Makefile
#sed -i 's/微信推送/TG Push/g' luci-app-wechatpush/po/zh_Hans/wechatpush.po
#sed -i '4d' luci-app-wechatpush/root/usr/share/luci/menu.d/luci-app-wechatpush.json
#sed -i '4 i\\t\t"order": 60,' luci-app-wechatpush/root/usr/share/luci/menu.d/luci-app-wechatpush.json
#sed -i 's/, 30)/, 60)/g' luci-theme-serverchan/luasrc/controller/serverchan.lua
#sed -i "/minisign:minisign/d" luci-app-dnscrypt-proxy2/Makefile
#sed -i 's/\(+luci-compat\)/\1 +luci-theme-argon/' luci-app-argon-config/Makefile
#sed -i "s/), 0)/), -1)/g" luci-app-passwall2/luasrc/controller/passwall2.lua
#sed -i "s/nil, 0)/nil, -1)/g" luci-app-passwall2/luasrc/controller/passwall2.lua
#sed -i 's/\(+luci-compat\)/\1 +luci-theme-design/' luci-app-design-config/Makefile
#sed -i 's/\(+luci-compat\)/\1 +luci-theme-argone/' luci-app-argone-config/Makefile

exit 0
