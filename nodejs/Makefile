#
# Copyright (C) 2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=nodejs
PKG_VERSION:=6.x
PKG_RELEASE:=1
PKG_REV:=v$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/nodejs
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=
  TITLE:=nodejs
  URL:=ADDTHIS
endef

define Package/nodejs/description
 NodejsMinimal Version
endef

define Package/nodejs/install
	$(INSTALL_DIR) $(1)/usr/bin
endef

$(eval $(call BuildPackage,nodejs))
