# Inherit common meta stuff
$(call inherit-product, vendor/meta/config/common.mk)

# Include meta audio files
include vendor/meta/config/meta_audio.mk

# Required meta packages
PRODUCT_PACKAGES += \
    LatinIME

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/meta/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
