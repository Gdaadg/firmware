################################################################################
#
# majestic-nt9856x
#
################################################################################

MAJESTIC_NT9856X_VERSION = current
MAJESTIC_NT9856X_SOURCE = majestic.nt9856x.master.tar.bz2
MAJESTIC_NT9856X_SITE = http://openipc.s3-eu-west-1.amazonaws.com
MAJESTIC_NT9856X_LICENSE = MIT
MAJESTIC_NT9856X_LICENSE_FILES = LICENSE

define MAJESTIC_NT9856X_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc
	$(INSTALL) -m 644 -t $(TARGET_DIR)/etc $(@D)/majestic.yaml

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(@D)/majestic
endef


$(eval $(generic-package))