#
# Copyright (C) 2014 OpenWrt.org  
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
# updated to work with latest source from abrasive
#

include $(TOPDIR)/rules.mk

PKG_NAME:=mpg123
PKG_VERSION:=1.21.0
PKG_RELEASE:=$(PKG_SOURCE_VERSION)

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=@SF/mpg123

include $(INCLUDE_DIR)/package.mk

define Package/mpg123/Default
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=Free and fast real time MPEG 1,2,3 decoder
  URL:=https://code.google.com/p/mpg123/
  DEPENDS:=+libltdl
endef

define Package/mpg123/description
	This is the fast and Free (LGPL license) real time MPEG Audio Layer 1, 2 and 3 decoding library and console player.
endef

define Package/mpg123
  $(Package/mpg123/Default)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/src/libmpg123/.libs/libmpg123* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_BUILD_DIR)/src/libmpg123/mpg123.h $(1)/usr/include/
endef


define Package/mpg123/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/.libs/mpg123 $(1)/usr/bin/
	$(CP) $(PKG_BUILD_DIR)/src/libmpg123/.libs/libmpg123* $(1)/usr/lib/
endef


$(eval $(call BuildPackage,mpg123))
