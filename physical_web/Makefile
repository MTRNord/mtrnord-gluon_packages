include $(TOPDIR)/rules.mk

PKG_NAME:=physical_web
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

define Package/physical_web
  SECTION:=network
  CATEGORY:=Network
  TITLE:=Implementation of mDNS from Physical Web
  DEPENDS:=+avahi +physical_web_admin
endef

define Package/physical_web/description
	Implementation of mDNS from Physical Web
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	echo "Nothing to really compile"
endef

define Package/physical_web/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,gluon-core))
