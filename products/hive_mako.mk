# Check for target product
ifeq (hive_mako,$(TARGET_PRODUCT))

# Define bootanimation size
HIVE_BOOTANIMATION_NAME := XHDPI

# Include common configuration
include vendor/hive/config/hive_common.mk

# Override AOSP build properties
PRODUCT_NAME := hive_mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Inherit HIVE base configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/hive.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/lge/mako/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/mako/device.mk)
$(call inherit-product-if-exists, vendor/lge/mako/device-vendor.mk)

endif
