#
# This software is licensed under the Public Domain.
#

include	$(TOPDIR)/rules.mk

PKG_NAME:=ath11k-wallys-5g
PKG_VERSION:=2
PKG_RELEASE=1

include $(INCLUDE_DIR)/package.mk

define Package/ath11k-wallys-5g
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=Firmware for Wallys-DR9074
  DEPENDS:=
endef


define Package/ath11k-wallys-5g/description
  Custom firmware for Wallys-DR9074-5G
endef

define Package/ath11k-wallys-5g/install
  $(INSTALL_DIR) $(1)/lib/firmware/ath11k/QCN9074/hw1.0
  $(CP) $(PKG_BUILD_DIR)/hw1.0/* $(1)/lib/firmware/ath11k/QCN9074/hw1.0
endef

$(eval $(call BuildPackage,ath11k-wallys-5g))
