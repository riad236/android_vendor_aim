# Extra Packages For AimRom
PRODUCT_PACKAGES += \
    ThemeInterfacer \
    SnapdragonCamera \
    PixelLauncherPrebuilt \
    Turbo \
    AIMWIZARD
    
# Enable assistant by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

# Pixel icons
vendor/aim/prebuilt/app/pixelicons/PixelLauncherIcons.apk:system/app/pixellaunchericons/PixelLauncherIcons.apk

# MAGISK INCLUDE
ifneq ($(WITH_MAGISK),false)
# Magisk Manager
PRODUCT_PACKAGES += \
    MagiskManager
# Copy Magisk zip
PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/magisk.zip:system/addon.d/magisk.zip
endif

# unlock sim globaly
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.sim_unlocked=1 \
    ro.com.google.ime.theme_id=5

# BOOT ANIMATION
$(call inherit-product, vendor/aim/prebuilt/bootanimation/bootanimation.mk)

 # CHANGELOG
PRODUCT_COPY_FILES += \
	vendor/aim/CHANGELOG.mkdn:system/etc/AIMLOG.txt


# ADB BY DEFAULT 
PRODUCT_PROPERTY_OVERRIDES += persist.service.adb.enable=1
