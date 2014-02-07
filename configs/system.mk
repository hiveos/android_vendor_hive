BOARD := $(subst hive_,,$(TARGET_PRODUCT))

# HIVE Overlays
#PRODUCT_PACKAGE_OVERLAYS += vendor/hive/overlay/common
#PRODUCT_PACKAGE_OVERLAYS += vendor/hive/overlay/$(TARGET_PRODUCT)

HIVE_VERSION_MAJOR = 0
HIVE_VERSION_MINOR = 1

#Temporary packages for device navigation 
PRODUCT_PACKAGES := \
    GoogleHome \
    GoogleNow

VERSION := $(HIVE_VERSION_MAJOR).$(HIVE_VERSION_MINOR)
ifeq ($(DEVELOPER_VERSION),true)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hive.version="DEVELOPER BUILD ("$(VERSION)")"
    HIVE_VERSION := dev_$(BOARD)-$(VERSION)-$(shell date -u +%Y%m%d)
else
    HIVE_VERSION := $(TARGET_PRODUCT)-$(VERSION)-$(shell date -u +%Y%m%d)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hive.version=$(VERSION)
