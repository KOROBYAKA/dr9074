include $(TOPDIR)/rules.mk

PKG_NAME:=wallys5g
PKG_RELEASE:=1

define Package/wallys5g
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=ath11k firmware
endef

define Build/Compile
    # nothing to do here
endef

define Package/wallys5g/install
    $(INSTALL_DIR) $(1)/lib/firmware/ath11k/QCN9074
    $(CP)./driver/* $(1)/lib/firmware/ath11k/QCN9074/
endef

$(eval $(call BuildPackage,wallys5g))
