# Copyright (C) 2006-2012 OpenWrt.org

# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.


include $(TOPDIR)/rules.mk

PKG_NAME:=squeezelite
PKG_VERSION:=75a72d5f86e1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://squeezelite.googlecode.com/archive/

TARGET_LDFLAGS += -lasound -lpthread -lm -lrt

include $(INCLUDE_DIR)/package.mk

define Package/squeezelite
	SECTION:=sound
	CATEGORY:=Sound
	TITLE:=lightweight headless squeezebox emulator
	URL:=http://www.squeezelite/
	DEPENDS:= +AUDIO_SUPPORT:alsa-lib +libvorbis +libflac \
		+libfaad2 +libffmpeg +libpthread +libmad
endef

define Package/squeezelite/description
	lightweight headless squeezebox emulator
endef

define Package/squeezelite/install
	$(INSTALL_DIR) $(1)/usr/bin/

	$(INSTALL_BIN) $(PKG_BUILD_DIR)/$(PKG_NAME) $(1)/usr/bin/
endef

$(eval $(call BuildPackage,squeezelite))

