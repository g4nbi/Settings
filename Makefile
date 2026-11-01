TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = Preferences

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Settings

Settings_FILES = SettingsRootListController.m
Settings_FRAMEWORKS = UIKit
Settings_PRIVATE_FRAMEWORKS = Preferences
Settings_INSTALL_PATH = /Library/PreferenceBundles
Settings_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Settings.plist$(ECHO_END)
