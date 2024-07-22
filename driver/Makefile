include $(TOPDIR)/rules.mk

PKG_NAME:=ath11k-wallys5g
PKG_RELEASE:=1
PKG_VERSION:=1.0


define Package/ath11k-wallys5g
	SECTION:=firmware
	CATEGORY:=Firmware
	TITLE:=Wallys 5G firmware
endef

define Package/ath11k-wallys5g/description
	Custom driver package to install driver files to /lib/firmware/ath11k/QCN9074.
endef

include $(INCLUDE_DIR)/package.mk

PKG_FIXUP:=autoreconf
PKG_FIXUP:=patch-libtool
PKG_FIXUP:=gettext-version

define Build/Compile

endef

define Package/ath11k-wallys5g/install
	$(INSTALL_DIR) $(1)/lib/firmware/ath11k/QCN9074/hw1.0
	$(CP) ./driver/hw1.0/* $(1)/lib/firmware/ath11k/QCN9074/hw1.0/
endef

$(eval $(call BuildPackage,ath11k-wallys5g))
