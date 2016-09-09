include $(TOPDIR)/rules.mk

PKG_NAME:=physical_web
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

define Package/physical_web
  SECTION:=network
  CATEGORY:=Network
  TITLE:=Implementation of mDNS from Physical Web
  DEPENDS:=+avahi
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
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/physical_web/install
	$(CP) ./files/* $(1)/
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
	$(SED) 's/__GLUON_OPENWRT_FEEDS__/{$(GLUON_OPENWRT_FEEDS:%="%",)}/' $(1)/lib/gluon/upgrade/500-opkg

	$(INSTALL_DIR) $(1)/lib/gluon
	echo "$(GLUON_VERSION)" > $(1)/lib/gluon/gluon-version
endef

define Package/physical_web/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackage,gluon-core))
