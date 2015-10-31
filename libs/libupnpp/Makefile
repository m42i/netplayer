#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libupnpp
PKG_VERSION:=0.12.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://www.lesbonscomptes.com/upmpdcli/downloads
PKG_MD5SUM:=c8472f91a4e08595cd104b5c9fb82eab

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libupnpp
    TITLE:=C++ wrapper for libupnp
    SECTION:=libs
    CATEGORY:=Libraries
    URL:=https://github.com/medoc92/libupnpp
    DEPENDS:=+libcurl +libexpat +libpthread +librt +libupnp +libstdcpp 
endef

define Package/libupnpp/description
  Defines useful objects over libupnp and can be used to create both devices and control points. It is shared by upmpdcli and upplay.

More information: http://www.lesbonscomptes.com/upmpdcli
endef

define Build/Configure
	$(call Build/Configure/Default)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/{lib,include}
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
endef

define Package/libupnpp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libupnpp*.so* \
		$(1)/usr/lib/
endef

$(eval $(call BuildPackage,libupnpp))
