include $(TOPDIR)/rules.mk

PKG_NAME:=physical_web_admin
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/physical_web_admin
  SECTION:=admin
  CATEGORY:=Administration
  DEPENDS:=+uci +physical_web
  TITLE:=Admin for the physical_web package
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/physical_web_admin/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) ./files/physical_web_admin $(1)/bin/

	$(INSTALL_DIR) $(1)/usr/lib/lua
	$(INSTALL_DATA) ./files/physical_web_admin.lua $(1)/usr/lib/lua/
endef

$(eval $(call BuildPackage,physical_web_admin))
