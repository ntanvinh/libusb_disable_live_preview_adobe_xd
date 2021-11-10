XD_PATH=/Applications/Adobe\ XD/Adobe\ XD.app/Contents/Frameworks/
cd "$XD_PATH"
if [[ -f "libusb-1.0.23.dylib.enable" ]] 
then
    mv libusb-1.0.23.dylib libusb-1.0.23.dylib.disable
    mv libusb-1.0.23.dylib.enable libusb-1.0.23.dylib
    echo "Adobe XD Live Preview enabled"
elif [[ -f "libusb-1.0.23.dylib.disable" ]] 
then
    mv libusb-1.0.23.dylib libusb-1.0.23.dylib.enable
    mv libusb-1.0.23.dylib.disable libusb-1.0.23.dylib
    echo "Adobe XD Live Preview disabled"
else
    mv libusb-1.0.23.dylib libusb-1.0.23.dylib.enable
    # Auto download file to this location
    cd ~/Downloads
    curl -L0 -O https://github.com/ntanvinh/libusb_disable_live_preview_adobe_xd/releases/download/v1/libusb-1.0.23.dylib
    mv ~/Downloads/libusb-1.0.23.dylib "$XD_PATH"
    echo "Adobe XD Live Preview disabled"
fi
