include $(TOPDIR)/rules.mk

PKG_NAME:=nodejs
PKG_VERSION:=6.x
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/nodejs
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=nodejs
  URL:=https://github.com/MTRNord/mtrnord_gluon_packages/tree/master/nodejs
endef

define Package/nodejs/description
 NodejsMinimal Version
endef

define Build/Configure
endef

define Build/Compile
	AR="$(TARGET_TOOLCHAIN)/bin/ar" CC="$(TARGET_TOOLCHAIN)/bin/gcc" CXX="$(TARGET_TOOLCHAIN)/bin/g++" LINK="$(TARGET_TOOLCHAIN)/bin/g++" RANLIB="$(TARGET_TOOLCHAIN)/bin/ranlib" STAGING_DIR="$(TARGET_STAGING_DIR)"  LIBPATH="$(TARGET_LIBPATH)" CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="'-Wl,-rpath-link '${LIBPATH}" CPPFLAGS="$(TARGET_CPPFLAGS)" $(MAKE) -C $(PKG_BUILD_DIR) $(TARGET_CONFIGURE_OPTS)
endef

define Package/nodejs/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/lib/gluon/announce/statistics.d
	$(CP) $(PKG_BUILD_DIR)/traffic_fastd $(1)/lib/gluon/announce/statistics.d/traffic_fastd
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/fastd-status $(1)/usr/bin/fastd-status
endef

$(eval $(call BuildPackage,nodejs))
