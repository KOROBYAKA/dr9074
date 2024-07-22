include $(TOPDIR)/rules.mk

PKG_NAME:=wallys5g
PKG_RELEASE:=1
PKG_VERSION:=1.0


define Package/wallys5g
	SECTION:=firmware
	CATEGORY:=Firmware
	TITLE:=Wallys 5G firmware
endef

define Package/wallys5g/description
	Custom driver package to install driver files to /lib/firmware/ath11k/QCN9074.
endef

include $(INCLUDE_DIR)/package.mk

PKG_FIXUP:=autoreconf
PKG_FIXUP:=patch-libtool
PKG_FIXUP:=gettext-version

define Build/Compile

endef

define Package/wallys5g/install
	$(INSTALL_DIR) $(1)/lib/firmware/ath11k/QCN9074
	$(INSTALL_DATA) ./hw1.0/* $(1)/lib/firmware/ath11k/QCN9074/
endef

$(eval $(call BuildPackage,wallys5g))
