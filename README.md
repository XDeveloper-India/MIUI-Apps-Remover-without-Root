# MIUI-Apps-Remover-without-Root
A small Windows Utility to remove stupid MIUI apps from Xiaomi device without root permission.

<img src="https://github.com/XDeveloper-India/MIUI-Apps-Remover-without-Root/raw/master/Snapshot/screenshot.png" height="523px" width="500px">

WARNING: you should not uninstall or disable “Xiaomi Find Device” com.xiaomi.finddevice.
On next reboot your phone will enter endless loop, and after some time it will ask to erase device and start over.

prerequisite:
1. USB Debugging:
   Enable USB debugging in your device.
   Go to Settings - About phone. 
   Tap “MIUI version” multiple times. Now Developer Options are unlocked. 
   Settings - Additional settings - Developer Options. Turn on USB debugging.
   
2. Android Platform tools:
   Download the tools from https://developer.android.com/studio/releases/platform-tools and Extract it.
   
Process:
1. Connect Device:
   Connect the phone to your computer via USB. For first time, your device will ask to accept connection from your computer.
2. Download and extract MIUI Apps remover.zip from https://github.com/XDeveloper-India/MIUI-Apps-Remover-without-Root/raw/master/MIUI%20Apps%20remover.zip. Start the application.
3. Now you have to select the ADB path. Select the folder where you have extracted the android platform tools and .
4. Now select the apps that you want to delete.
5. Press Execute. Done!.
   
