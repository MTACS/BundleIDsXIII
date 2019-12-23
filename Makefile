ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = BundleIDsXIII
$(APPLICATION_NAME)_FILES = main.m BundleIDsAppDelegate.m RootViewController.m
$(APPLICATION_NAME)_FRAMEWORKS = UIKit CoreGraphics
$(APPLICATION_NAME)_LIBRARIES = applist 

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"BundleIDsXIII\"" || true
