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

define Build/Prepare
	export AR="$(TOOLCHAIN_DIR)/bin/ar"
	export CC="$(TOOLCHAIN_DIR)/bin/gcc"
	export CXX="$(TOOLCHAIN_DIR)/bin/g++"
	export LINK="$(TOOLCHAIN_DIR)/bin/g++"
	export RANLIB="$(TOOLCHAIN_DIR)/bin/ranlib"
	export STAGING_DIR="$(STAGING_DIR)"
	export LIBPATH="TOOLCHAIN_LIB_DIRS"
	export LDFLAGS="'-Wl,-rpath-link '${LIBPATH}"
	git clone https://github.com/nodejs/node.git
	cd node
	git checkout v6.x
	cd $(TOPDIR)
endef

define Build/Configure
  cd node
  ./configure '--without-snapshot --without-npm'
  cd $(TOPDIR)
endef

define Build/Compile
         cd node
	 CFLAGS="$(TARGET_CFLAGS)" CPPFLAGS="$(TARGET_CPPFLAGS)" make -C $(PKG_BUILD_DIR) $(TARGET_CONFIGURE_OPTS)
	 cd $(TOPDIR)
endef

define Package/nodejs/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/node $(1)/usr/bin/node
endef

$(eval $(call BuildPackage,nodejs))
