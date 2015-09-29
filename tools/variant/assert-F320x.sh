#!/bin/bash

perl -i -pe 's/.*/ assert(getprop("ro.product.device") == "f320s" || getprop("ro.build.product") == "f320s" || ro.product.device") == "f320l" || getprop("ro.build.product") == "f320l" || getprop("ro.product.device") == "f320k" || getprop("ro.build.product") == "f320k" || getprop("ro.product.device") == "g2" || getprop("ro.build.product") == "g2" || getprop("ro.product.device") == "galbi" || getprop("ro.build.product") == "galbi"  || abort("This package is for device: f320k,f320l,f320s,g2,galbi; this device is " + getprop("ro.product.device") + ".");); / if $.==17' updater-script
perl -i -pe 's/.*/ ui_print(" assert f320k/l/s : OK"); / if $.==18' updater-script

#aroma config
perl -i -pe 's/.*/ ini_set("rom_device", "G2 F320K/S/L"); / if $.==13' aroma-config