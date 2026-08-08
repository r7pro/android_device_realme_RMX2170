# vendor/hotword
if [ -e vendor/hotword ]; then
    echo "repo vendor/hotword exists.. Skipping cloning." && echo ""
else
    echo "Now will clone vendor/hotword" && echo ""
    git clone https://github.com/realme-sm7125/vendor_hotword vendor/hotword
    echo "Done cloning of vendor/hotword" && echo ""
fi

# dirac
if [ -e packages/apps/RealmeDirac ]; then
    echo "RealmeDirac exist... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone Realme dirac" && echo ""
    git clone https://github.com/realme-sm7125/android_packages_apps_RealmeDirac packages/apps/RealmeDirac
    if [ -e packages/apps/RealmeDirac ]; then
        echo "Done cloning of Realme dirac" && echo && sleep 0.5
    else
        echo "There is some problem in cloning Realme dirac" && echo "" && sleep 0.5
    fi
fi

# viper
if [ -e packages/apps/ViPER4AndroidFX ]; then
    echo "ViPER4AndroidFX exist... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone ViPER4AndroidFX" && echo ""
    git clone https://github.com/realme-sm7125/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX
    if [ -e packages/apps/ViPER4AndroidFX ]; then
        echo "Done cloning of ViPER4AndroidFX" && echo && sleep 0.5
    else
        echo "There is some problem in cloning ViPER4AndroidFX" && echo "" && sleep 0.5
    fi
fi

# dolby
if [ -e hardware/dolby ]; then
    echo "hardware/dolby exist... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone hardware/dolby" && echo ""
    git clone --depth=1 -b bka-aospa https://github.com/Evolution-X-Devices/hardware_dolby hardware/dolby
    if [ -e hardware/dolby ]; then
        echo "Done cloning of hardware/dolby" && echo && sleep 0.5
    else
        echo "There is some problem in cloning hardware/dolby" && echo "" && sleep 0.5
    fi
fi
