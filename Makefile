#
# This software is licensed under the Public Domain.
#

include	$(TOPDIR)/rules.mk

PKG_NAME:=wallys5g
PKG_VERSION:=2
PKG_RELEASE:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/wallys5g

include $(INCLUDE_DIR)/package.mk

define Package/wallys5g
	SECTION:=firmware
	CATEGORY:=Firmware
	TITLE:=Firmware for Wallys-DR9074
	DEPENDS:=
endef

PKG_FIXUP:=autoreconf
PKG_FIXUP:=patch-libtool
PKG_FIXUP:=gettext-version


define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./hw1.0/board2.bin $(PKG_BUILD_DIR)/
endef

define Package/wallys5g/install
	$(INSTALL_DIR) $(1)/lib/firmware/ath11k/QCN9074/hw1.0
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/board2.bin $(1)/lib/firmware/ath11k/QCN9074/hw1.0/board2.bin
endef

$(info $(PKG_BUILD_DIR))
$(eval $(call BuildPackage,wallys5g))
