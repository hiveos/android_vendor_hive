ifneq ($(filter hive_mako hive_grouper,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/hive/prebuilt/bootanimation/1280x720.zip:system/media/bootanimation.zip
endif

