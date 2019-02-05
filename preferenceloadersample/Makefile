THEOS_DEVICE_IP = 192.168.1.4

include $(THEOS)/makefiles/common.mk

ARCHS = armv7 arm64
BUNDLE_NAME = PreferenceLoaderSample
PreferenceLoaderSample_CFLAGS = -I./
PreferenceLoaderSample_FILES = PRORootListController.m RKDropdownAlert/RKDropdownAlert.m
PreferenceLoaderSample_INSTALL_PATH = /Library/PreferenceBundles
PreferenceLoaderSample_FRAMEWORKS = UIKit
PreferenceLoaderSample_PRIVATE_FRAMEWORKS = Preferences BluetoothManager

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/PreferenceLoaderSample.plist$(ECHO_END)

include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard"
