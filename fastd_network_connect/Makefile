include $(TOPDIR)/rules.mk

PKG_NAME:=fastd-network-connect
PKG_VERSION:=0.1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/fastd-network-connect
  SECTION:=net
  CATEGORY:=Fastd
  TITLE:=Fastd Network Connector
  DEPENDS:=+gluon-core +fastd
endef

define Build/Prepare
        mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/fastd-network-connect/install
        $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,fastd-network-connect))

