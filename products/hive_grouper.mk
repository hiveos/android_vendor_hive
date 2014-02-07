# Check for target product
ifeq (hive_grouper,$(TARGET_PRODUCT))

# Include common configuration
include vendor/hive/main.mk

# Inherit HIVE device configuration
$(call inherit-product, device/asus/grouper/hive_grouper.mk)

# Override AOSP build properties
PRODUCT_NAME := hive_grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

endif
