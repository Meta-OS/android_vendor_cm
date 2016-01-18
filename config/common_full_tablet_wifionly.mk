# Inherit common metaos stuff
$(call inherit-product, vendor/metaos/config/common_full.mk)

# Required metaos packages
PRODUCT_PACKAGES += \
    LatinIME

# Include metaos LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/metaos/overlay/dictionaries

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/metaos/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
