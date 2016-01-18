# Inherit common metaos stuff
$(call inherit-product, vendor/metaos/config/common.mk)

# Include metaos audio files
include vendor/metaos/config/metaos_audio.mk

# Required metaos packages
PRODUCT_PACKAGES += \
    LatinIME

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/metaos/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
