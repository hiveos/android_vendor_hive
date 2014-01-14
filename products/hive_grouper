# Check for target product
ifeq (hive_grouper,$(TARGET_PRODUCT))

# Define bootanimation size
HIVE_BOOTANIMATION_NAME := XHDPI

# Override AOSP build properties
PRODUCT_NAME := hive_grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

# Inherit from those products. Most specific first.
$(call inherit-product, device/asus/grouper/device.mk)

# Inherit HIVE base configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/hive.mk)

endif
