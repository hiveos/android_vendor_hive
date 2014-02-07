# Check for target product
ifeq (hive_mako,$(TARGET_PRODUCT))

# Include common configuration
include vendor/hive/main.mk

# Inherit HIVE device configuration
$(call inherit-product, device/lge/mako/hive_mako.mk)

# Override AOSP build properties
PRODUCT_NAME := hive_mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

endif
