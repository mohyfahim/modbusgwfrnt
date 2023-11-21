#
# Copyright (C) 2023 Mohy Fahim
#

include $(TOPDIR)/rules.mk

# Name, version and release number
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=modbusgwfrnt
PKG_VERSION:=1.0
PKG_RELEASE:=1

# Source settings (i.e. where to find the source codes)
# This is a custom variable, used below
USE_SOURCE_DIR:=$(TOPDIR)/fahim/network/utils/modbusgwfrnt
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk
# include $(INCLUDE_DIR)/meson.mk

define Package/modbusgwfrnt
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Modbusgw Front
endef

define Package/modbusgwfrnt/description
  Modbus tools based on libmodbus to log data fetched by a master/client or
  received by a slave/server (writing of registers). mbcollect is able to act
  as client or server (in TCP or RTU)
endef

define Build/Configure
endef

# Package build instructions; invoke the target-specific compiler to first compile the source file, and then to link the file into the final executable
define Build/Compile
endef

define Build/Install
endef

# Package install instructions; create a directory inside the package to hold our executable, and then copy the executable we built previously into the folder
define Package/modbusgwfrnt/install
		$(INSTALL_DIR) $(1)/www/front
		$(INSTALL_BIN) $(PKG_BUILD_DIR)/dist/browser/* $(1)/www/front/.
endef

# This command is always the last, it uses the definitions and variables we give above in order to get the job done
$(eval $(call BuildPackage,modbusgwfrnt))