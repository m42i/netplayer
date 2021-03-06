#
# Copyright (C) 2014 OpenWrt.org  
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
# updated to work with latest source from abrasive
#

include $(TOPDIR)/rules.mk

PKG_NAME:=upmpdcli
PKG_VERSION:=0.8.5
PKG_RELEASE:=$(PKG_SOURCE_VERSION)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git://github.com/medoc92/upmpdcli
PKG_SOURCE_VERSION:=master
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz

PKG_BUILD_PARALLEL:=1

PKG_BUILD_DEPENDS:= +libcurl +libupnpp +libmpdclient +libexpat

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS= \
                --host=$(REAL_GNU_TARGET_NAME)

LIBUPNPP_PKG_NAME:=libupnpp-0.8.5.tar.gz
LIBUPNPP_SOURCE:=http://www.lesbonscomptes.com/upmpdcli/downloads/$(LIBUPNPP_PKG_NAME)
define Build/Configure
	(cd $(PKG_BUILD_DIR); ./autogen.sh)
	(cd $(PKG_BUILD_DIR); wget -c $(LIBUPNPP_SOURCE); mkdir -p libupnpp; tar xzf $(LIBUPNPP_PKG_NAME) -C libupnpp --strip 2)
	$(call Build/Configure/Default, )
endef

define Package/upmpdcli/Default
  SECTION:=multimedia
  CATEGORY:=Multimedia
  TITLE:=UPnP Media Renderer front-end to MPD, the Music Player Daemon.
  URL:=http://www.lesbonscomptes.com/upmpdcli/upmpdcli.html
endef

define Package/upmpdcli
  $(Package/upmpdcli/Default)
  DEPENDS:= +libpthread +libcurl +libexpat +libupnpp +mpd +libmpdclient
endef

define Package/upmpdcli/description
  It supports both pure UPnP and the OpenHome ohMedia services.
endef


define Package/upmpdcli/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DIR) $(1)/usr/local/share

	$(INSTALL_BIN) $(PKG_BUILD_DIR)/upmpdcli $(1)/usr/bin/
	$(INSTALL_BIN) ./files/upmpdcli.init $(1)/etc/init.d/upmpdcli

	$(INSTALL_DATA) ./files/upmpdcli.config $(1)/etc/config/upmpdcli
	$(CP) ./files/usr/local/share/upmpdcli $(1)/usr/local/share/
endef


$(eval $(call BuildPackage,upmpdcli))
