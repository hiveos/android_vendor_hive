# Gesture enabled JNI
PRODUCT_COPY_FILES += \
    vendor/hive/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable root for adb+apps
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=3

# device specific prebuilts
-include vendor/hive/prebuilt/$(TARGET_PRODUCT)/prebuilt.mk

BOARD := $(subst pa_,,$(TARGET_PRODUCT))

# HIVE Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/hive/overlay/common
#PRODUCT_PACKAGE_OVERLAYS += vendor/hive/overlay/$(TARGET_PRODUCT)

HIVE_VERSION_MAJOR = 0
HIVE_VERSION_MINOR = 1

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
