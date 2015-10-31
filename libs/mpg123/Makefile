#
# Copyright (C) 2014 OpenWrt.org  
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
# updated to work with latest source from abrasive
#

include $(TOPDIR)/rules.mk

PKG_NAME:=mpg123
PKG_VERSION:=1.22.4
PKG_RELEASE:=$(PKG_SOURCE_VERSION)

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=@SF/mpg123
PKG_MD5SUM:=2dfafae3bbc532b4c8b04a77c6a6de89

include $(INCLUDE_DIR)/package.mk

define Package/mpg123/Default
  TITLE:=Free and fast real time MPEG 1,2,3 decoder
  URL:=https://code.google.com/p/mpg123/
  DEPENDS:=+libltdl
endef

define Package/mpg123/Default/description
	This is the fast and Free (LGPL license) real time MPEG Audio Layer 1, 2 and 3 decoder.
endef

define Package/mpg123
$(call Package/mpg123/Default)
  SECTION:=sound
  CATEGORY:=Sound
  TITLE+=player
endef

define Package/mpg123/description
$(call Package/mpg123/Default/description)
  This package contains a binary to play MPEG Audio Layer 1, 2 and 3 files.
endef

define Package/libmpg123
$(call Package/mpg123/Default)
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE+=library
endef

define Package/libmpg123/description
$(call Package/mpg123/Default/description)
  This package contains the library.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/src/libmpg123/.libs/libmpg123* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_BUILD_DIR)/src/libmpg123/mpg123.h $(1)/usr/include/
endef


define Package/mpg123/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/.libs/mpg123 $(1)/usr/bin/
endef

define Package/libmpg123/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/src/libmpg123/.libs/libmpg123* $(1)/usr/lib/
endef


$(eval $(call BuildPackage,mpg123))
$(eval $(call BuildPackage,libmpg123))
