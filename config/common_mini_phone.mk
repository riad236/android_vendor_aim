$(call inherit-product, vendor/aim/config/common_mini.mk)

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/aim/config/telephony.mk)
