#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libupnpp
PKG_VERSION:=0.8.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://www.lesbonscomptes.com/upmpdcli/downloads
#PKG_SOURCE_URL:=@SF/musicpd/files/libupnpp/$(PKG_VERSION)
PKG_MD5SUM:=613b87999f6c8ce7f07bf2420fea1ddf

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libupnpp
    TITLE:=C++ wrapper for libupnp
    SECTION:=libs
    CATEGORY:=Libraries
    URL:=https://github.com/medoc92/libupnpp
    DEPENDS:=+libcurl +libexpat +libpthread +librt +libupnp
endef

define Package/libupnpp/description
  Defines useful objects over libupnp and can be used to create both devices and control points. It is shared by upmpdcli and upplay.

More information: http://www.lesbonscomptes.com/upmpdcli
endef

define Build/Configure
	$(call Build/Configure/Default)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libupnpp $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libupnpp*.so* $(1)/usr/lib/
endef

# Get and copy libstdc++ file into usr lib
LIBSTDCXX_PKG:=libstdcpp_4.8-linaro-1_ar71xx.ipk
LIBSTDCXX_PKG_URL:=http://downloads.openwrt.org/barrier_breaker/14.07/ar71xx/generic/packages/base/$(LIBSTDCXX_PKG)
define Package/libupnpp/install
    (cd $(BUILD_DIR); wget -c $(LIBSTDCXX_PKG_URL); tar xzf $(LIBSTDCXX_PKG) ./data.tar.gz; tar xzf data.tar.gz )
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(BUILD_DIR)/usr/lib/libstd* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libupnpp*.so* \
		$(1)/usr/lib/
endef

$(eval $(call BuildPackage,libupnpp))
