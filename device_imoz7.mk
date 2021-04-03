#Default settings
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/alps/imoz7/imoz7-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/alps/imoz7/overlay

PRODUCT_AAPT_CONFIG := normal hdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_imoz7
PRODUCT_DEVICE := imoz7
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    persist.mtk.aee.aed=on \
    persist.sys.usb.config=mass_storage,adb \
    persist.service.acm.enable=0

#Permissions device files
PRODUCT_COPY_FILES += \
	device/alps/imoz7/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml\
	device/alps/imoz7/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml\
	device/alps/imoz7/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml\
	device/alps/imoz7/permissions/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml\
	device/alps/imoz7/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml\
	device/alps/imoz7/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml\
	device/alps/imoz7/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml\
	device/alps/imoz7/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml\
	device/alps/imoz7/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml\
	device/alps/imoz7/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml\
	device/alps/imoz7/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml\
	device/alps/imoz7/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml\
	device/alps/imoz7/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml\
	device/alps/imoz7/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml\
	#Not present on the original stock rom of the device
	#device/alps/imoz7/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml\
	device/alps/imoz7/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml\
	device/alps/imoz7/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml\
	device/alps/imoz7/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml\
	device/alps/imoz7/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml\
	device/alps/imoz7/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml\
	device/alps/imoz7/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml\
	device/alps/imoz7/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml\
	device/alps/imoz7/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml\
	device/alps/imoz7/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml\
	device/alps/imoz7/permissions/com.mediatek.location.provider.xml:system/etc/permissions/com.mediatek.location.provider.xml\
	device/alps/imoz7/permissions/features.xml:system/etc/permissions/features.xml\
	device/alps/imoz7/permissions/gpsconfig.xml:system/etc/permissions/gpsconfig.xml\
	device/alps/imoz7/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml\
	device/alps/imoz7/permissions/platform.xml:system/etc/permissions/platform.xml\

PRODUCT_COPY_FILES += \
    device/alps/imoz7/prebuilt/root/init.imoz7.rc:root/init.imoz7.rc \
    device/alps/imoz7/prebuilt/root/init.imoz7.usb.rc:root/init.imoz7.usb.rc \
    device/alps/imoz7/prebuilt/root/init.mtk.rc:root/init.mtk.rc \
    device/alps/imoz7/prebuilt/root/ueventd.imoz7.rc:root/ueventd.imoz7.rc \
    device/alps/imoz7/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/alps/imoz7/prebuilt/system/usr/keylayout/imoz7-kpd.kl:/system/usr/keylayout/imoz7_kpd.kl\
    device/alps/imoz7/prebuilt/system/etc/.tp/thermal.conf:/system/etc/.tp/thermal.conf\
    device/alps/imoz7/prebuilt/system/etc/.tp/thermal.off.conf:/system/etc/.tp/thermal.off.conf \
    device/alps/imoz7/prebuilt/system/etc/mpeg4_venc_parameter.cfg:/system/etc/mpeg4_venc_parameter.cfg \
    device/alps/imoz7/prebuilt/system/etc/mtk_omx_core.cfg:/system/etc/mtk_omx_core.cfg \
    device/alps/imoz7/prebuilt/system/etc/player.cfg:/system/etc/player.cfg \
    device/alps/imoz7/prebuilt/system/etc/srs_processing.cfg:/system/etc/srs_processing.cfg
