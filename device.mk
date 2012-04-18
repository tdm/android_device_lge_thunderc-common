PRODUCT_LOCALES := en_US es_ES

PRODUCT_INSTALL_PACKAGES := \
	vendor/google/gapps-20120317

# DSPManager
PRODUCT_REMOVE_FILES += \
	app/DSPManager.apk \
	lib/soundfx/libcyanogen-dsp.so \

# PicoTTS
PRODUCT_REMOVE_FILES += \
	tts/lang_pico/de-DE_gl0_sg.bin \
	tts/lang_pico/de-DE_ta.bin \
	tts/lang_pico/en-GB_kh0_sg.bin \
	tts/lang_pico/en-GB_ta.bin \
	tts/lang_pico/fr-FR_nk0_sg.bin \
	tts/lang_pico/fr-FR_ta.bin \
	tts/lang_pico/it-IT_cm0_sg.bin \
	tts/lang_pico/it-IT_ta.bin

# Wallpapers and Media
PRODUCT_REMOVE_FILES += \
	app/HoloSpiralWallpaper.apk \
	app/LiveWallpapers.apk \
	app/MagicSmokeWallpapers.apk \
	app/PhaseBeam.apk \
	app/VisualizationWallpapers.apk \
	media/audio/ringtones/CyanTone.ogg

# Other
PRODUCT_REMOVE_FILES += \
	app/VideoEditor.apk \
	lib/libvideoeditor_jni.so \
	lib/libvideoeditorplayer.so

# XXX: How to best do this?
PRODUCT_REMOVE_PACKAGE_FILES := \
	LatinIME.apk \
		res/raw-cs/main.dict \
		res/raw-da/main.dict \
		res/raw-de/main.dict \
		res/raw-el/main.dict \
		res/raw-fr/main.dict \
		res/raw-hr/main.dict \
		res/raw-it/main.dict \
		res/raw-iw/main.dict \
		res/raw-ka/main.dict \
		res/raw-nl/main.dict \
		res/raw-pt/main.dict \
		res/raw-ru/main.dict \
		res/raw-sv/main.dict

DEVICE_PACKAGE_OVERLAYS += device/lge/thunderc-common/overlay

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libjni_latinime \
    librs_jni \
    brcm_patchram_plus \
    audio_policy.thunderc \
    audio.primary.thunderc \
    copybit.thunderc \
    gralloc.thunderc \
    sensors.thunderc \
    lights.thunderc \
    gps.thunderc \
    bash \
    nano \
    e2fsck \
    flash_image \
    erase_image \
    dump_image \
    bdaddr_read \
    lgapversion

PRODUCT_PACKAGES += \
    Provision \
    GoogleSearch \
    hcitool \
    QuickSearchBox \
    FileManager \
    com.android.future.usb.accessory


PRODUCT_COPY_FILES += \
    device/lge/thunderc-common/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/thunderc-common/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/lge/thunderc-common/prebuilt/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/thunderc-common/prebuilt/etc/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \

# BT startup
PRODUCT_COPY_FILES += \
    device/lge/thunderc-common/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

 # Board-specific init

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/thunderc-common/init.thunderc.rc:root/init.thunderc.rc


# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.lge.vibrator_amp=125 \
    ro.sf.lcd_density=160

# Set persist.sys.use_16bpp_alpha?


PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(CDMA_GOOGLE_BASE) \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC)
