# MIUI-Apps-Remover-without-Root
A small Windows Utility to remove stupid MIUI apps from Xiaomi device without root permission.

WARNING: you should not uninstall or disable “Xiaomi Find Device” com.xiaomi.finddevice.
On next reboot your phone will enter endless loop, and after some time it will ask to erase device and start over. Guess how I learned that?

prerequisite:
1. USB Debugging:
   Enable USB debugging in your device.
   Go to Settings - About phone. 
   Tap “MIUI version” multiple times. Now Developer Options are unlocked. 
   Settings - Additional settings - Developer Options. Turn on USB debugging.
   
2. Android Platform tools:
   Download the tools from https://dl.google.com/android/repository/commandlinetools-win-6609375_latest.zip and Extract it.
   
Process:
1. Connect Device:
   Connect the phone to your computer via USB. Choose “File Transfer” mode instead of default “No data transfer”.
   
2. Start the application and select the action you want to perform like Uninstall/install.
3. Now you have to select the ADB path. Open the folder where you have extracted. Search for the directory containing adb.exe. Select that folder.
4. Now select the apps that you want to delete.
5. Press Execute and Enjoy.
   
