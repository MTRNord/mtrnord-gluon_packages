include $(TOPDIR)/rules.mk

PKG_NAME:=physical_web_admin
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)


define Package/physical_web_admin
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Admin panel for physical_web package
  DEPENDS:=gluon-config-mode-core-virtual +physical_web
endef

define Package/physical_web_admin/description
	Admin panel for physical_web package
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,physical_web_adminr,i18n)
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/physical_web_admin/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
	$(call GluonInstallI18N,physical_web_admin,$(1))
endef

$(eval $(call BuildPackage,physical_web_admin))
