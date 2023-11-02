# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# HorizonDroid Platform Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.custom.build.date=$(BUILD_DATE) \
    ro.custom.device=$(CUSTOM_BUILD) \
    ro.custom.fingerprint=$(ROM_FINGERPRINT) \
    ro.custom.version=$(CUSTOM_VERSION) \
    ro.modversion=$(CUSTOM_VERSION)

# Updater
ifeq ($(IS_OFFICIAL),true)
    ADDITIONAL_SYSTEM_PROPERTIES  += \
        net.horizondroid.build_type=ci \
        net.horizondroid.version=$(CUSTOM_VERSION_PROP)
endif
