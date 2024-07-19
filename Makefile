#
# This software is licensed under the Public Domain.
#

include	$(TOPDIR)/rules.mk

PKG_NAME:=wallys5g
PKG_VERSION:=2
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/wallys5g
	SECTION:=firmware
	CATEGORY:=Firmware
	TITLE:=Firmware for Wallys-DR9074
	DEPENDS:=
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./hw1.0/board2.bin $(PKG_BUILD_DIR)/
endef


define Package/wallys5g/install
	mkdir -p $(PKG_BUILD_DIR)
	(CP) ./hw1.0/board2.bin $(PKG_BUILD_DIR)/	
	$(INSTALL_DIR) $(1)/lib/firmware/ath11k/QCN9074/hw1.0
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/board2.bin $(1)/lib/firmware/ath11k/QCN9074/hw1.0
endef

$(eval $(call BuildPackage,wallys5g))
