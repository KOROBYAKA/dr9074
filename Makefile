include $(TOPDIR)/rules.mk

PKG_NAME:=wallys5g
PKG_RELEASE:=1



define Package/wallys5g
	SECTION:=firmware
	CATEGORY:=Firmware
	TITLE:=Wallys 5G firmware
endef

define Package/custom-driver/description
	Custom driver package to install driver files to /lib/firmware/ath11k/QCN9074.
endef

define Build/Prepare
  mkdir -p $(PKG_BUILD_DIR)
  cp -r $(CURDIR)/driver/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
  
endef

define Package/wallys5g/install
	$(INSTALL_DIR) $(1)/lib/firmware/ath11k/QCN9074
	$(CP) ./driver/* $(1)/lib/firmware/ath11k/QCN9074/
endef

$(eval $(call BuildPackage,wallys5g))
