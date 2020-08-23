; AutoIt GUI Example
; Created: 17/01/2005 - CyberSlug
; Modifed: 05/12/2011 - guinness
; Modifed: 09/06/2014 - mLipok

#Region INCLUDE
#include <AVIConstants.au3>
#include <GuiConstantsEx.au3>
#include <StaticConstants.au3>
#include <TreeViewConstants.au3>
#include <GDIPlus.au3>
#include <MsgBoxConstants.au3>
#include <Array.au3>
#include <WinAPIFiles.au3>
#include <FileConstants.au3>
#include <WindowsConstants.au3>
#include <EditConstants.au3>
#include <ProgressConstants.au3>

#EndRegion INCLUDE

#Region GUI
Local $gui = GUICreate("MIUI Apps Remover", 500, 500)
GUISetIcon(@SystemDir & "\mspaint.exe", 0)
#EndRegion GUI


GUICtrlCreatePic("logo.jpg", 21, 20, 206, 68)
GUICtrlSetTip(-1, '#Region PIC')
GUICtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GUICtrlSetColor(-1, 0xFFFFFF)
#EndRegion PIC

GUICtrlCreateLabel("Please enable USB Debugging in your device.", 100, 120)

#Region BUTTON
Local $idCTRL_EdtScreen = GUICtrlCreateEdit("Please select ADB folder.",10,145,365,30, BitOR($ES_READONLY, $ES_CENTER), $WS_EX_STATICEDGE)
Local $iFileSelectButton = GUICtrlCreateButton("Select Folder", 380, 145, 100, 30)
GUICtrlSetTip($iFileSelectButton, 'Select ADB path')
#EndRegion BUTTON

GUICtrlCreateGroup("Apps",5, 185, 485, 240)

#Region CHECKBOX Column1
Local $iMiBrowser= GUICtrlCreateCheckbox("Mi Browser", 15,200);
GUICtrlSetTip($iMiBrowser,"com.android.browser");
Local $iGoogleDrive= GUICtrlCreateCheckbox("Google Drive", 15,220);
GUICtrlSetTip($iGoogleDrive,"com.google.android.apps.docs");
Local $iGoogleMaps= GUICtrlCreateCheckbox("Google Maps", 15,240);
GUICtrlSetTip($iGoogleMaps,"com.google.android.apps.maps");
Local $iMiScreenRecorder= GUICtrlCreateCheckbox("Mi Screen Recorder", 15,260);
GUICtrlSetTip($iMiScreenRecorder,"com.miui.screenrecorder");
Local $iMiVideo= GUICtrlCreateCheckbox("Mi Video", 15,280);
GUICtrlSetTip($iMiVideo,"com.miui.videoplayer");
Local $iMiDrop= GUICtrlCreateCheckbox("Mi Drop", 15,300);
GUICtrlSetTip($iMiDrop,"com.xiaomi.midrop");
Local $iMiApps= GUICtrlCreateCheckbox("Mi Apps", 15,320);
GUICtrlSetTip($iMiApps,"com.xiaomi.mipicks");
Local $iMiScanner= GUICtrlCreateCheckbox("Mi Scanner", 15,340);
GUICtrlSetTip($iMiScanner,"com.xiaomi.scanner");
Local $iGooglePhotos= GUICtrlCreateCheckbox("Google Photos", 15,360);
GUICtrlSetTip($iGooglePhotos,"com.google.android.apps.photos");
Local $iGoogleDuo= GUICtrlCreateCheckbox("Google Duo", 15,380);
GUICtrlSetTip($iGoogleDuo,"com.google.android.apps.tachyon");
Local $iGoogleApp= GUICtrlCreateCheckbox("Google App", 15,400);
GUICtrlSetTip($iGoogleApp,"com.google.android.googlequicksearchbox");

#Region CHECKBOX Column2
Local $iCalendar= GUICtrlCreateCheckbox("Calendar",140,200);
GUICtrlSetTip($iCalendar,"com.android.calendar");
Local $iFacebookAppManager= GUICtrlCreateCheckbox("Facebook App Manager",140,220);
GUICtrlSetTip($iFacebookAppManager,"com.facebook.appmanager");
Local $iFacebookServices= GUICtrlCreateCheckbox("Facebook Services",140,240);
GUICtrlSetTip($iFacebookServices,"com.facebook.services");
Local $iFacebookAppInstaller= GUICtrlCreateCheckbox("Facebook App Installer",140,260);
GUICtrlSetTip($iFacebookAppInstaller,"com.facebook.system");
Local $iGboard= GUICtrlCreateCheckbox("Gboard",140,280);
GUICtrlSetTip($iGboard,"com.google.android.inputmethod.latin");
Local $iGoogleMusic= GUICtrlCreateCheckbox("Google Music",140,300);
GUICtrlSetTip($iGoogleMusic,"com.google.android.music");
Local $iPlayMovies= GUICtrlCreateCheckbox("Play Movies",140,320);
GUICtrlSetTip($iPlayMovies,"com.google.android.videos");
Local $iYoutube= GUICtrlCreateCheckbox("Youtube",140,340);
GUICtrlSetTip($iYoutube,"com.google.android.youtube");
Local $iFileExplorer= GUICtrlCreateCheckbox("File Explorer",140,360);
GUICtrlSetTip($iFileExplorer,"com.mi.android.globalFileexplorer");
Local $iAnalytics= GUICtrlCreateCheckbox("Analytics",140,380);
GUICtrlSetTip($iAnalytics,"com.miui.analytics");
Local $iMiFeedback= GUICtrlCreateCheckbox("Mi Feedback",140,400);
GUICtrlSetTip($iMiFeedback,"com.miui.bugreport");

#Region CheckBox column 3
Local $iCalculator= GUICtrlCreateCheckbox("Calculator",285,200);
GUICtrlSetTip($iCalculator,"com.miui.calculator");
Local $iMiCompass= GUICtrlCreateCheckbox("Mi Compass",285,220);
GUICtrlSetTip($iMiCompass,"com.miui.compass");
Local $imas= GUICtrlCreateCheckbox("mas (main system advertising)",285,240);
GUICtrlSetTip($imas,"com.miui.msa.global");
Local $iMiNotes= GUICtrlCreateCheckbox("Mi Notes",285,260);
GUICtrlSetTip($iMiNotes,"com.miui.notes");
Local $iMiMusic= GUICtrlCreateCheckbox("Mi Music",285,280);
GUICtrlSetTip($iMiMusic,"com.miui.player");
Local $iMiFM= GUICtrlCreateCheckbox("Mi FM",285,300);
GUICtrlSetTip($iMiFM,"com.miui.fm");
Local $iMiMover= GUICtrlCreateCheckbox("Mi Mover",285,320);
GUICtrlSetTip($iMiMover,"com.miui.huanji");
Local $iMiWallpaperCarousel= GUICtrlCreateCheckbox("Mi Wallpaper Carousel",285,340);
GUICtrlSetTip($iMiWallpaperCarousel,"com.mfashiongallery.emag");
Local $iAppVault= GUICtrlCreateCheckbox("App Vault",285,360);
GUICtrlSetTip($iAppVault,"com.miui.personalassistant");
Local $imail= GUICtrlCreateCheckbox("mail",285,380);
GUICtrlSetTip($imail,"com.android.email");
Local $iGoogleKeyboard= GUICtrlCreateCheckbox("Google Keyboard",285,400);
GUICtrlSetTip($iGoogleKeyboard,"com.google.android.inputmethod.latin");

#Region BUTTON
GUICtrlCreateGroup("Extras", 250, 0, 100, 110)
Local $downloadUSBDriver = GUICtrlCreateButton("USB Driver", 255, 20, 90, 20)
Local $downloadADB = GUICtrlCreateButton("ADB", 255, 40, 90, 20)
Local $help = GUICtrlCreateButton("Help", 255, 60, 90, 20)
Local $about = GUICtrlCreateButton("About", 255, 80, 90, 20)
#EndRegion BUTTON




#Region GROUP WITH RADIO BUTTONS
GUICtrlCreateGroup("Action", 350, 0, 140, 110)
Local $install = GUICtrlCreateRadio("Install", 370, 20, 100)
GUICtrlSetTip($install, '#Action Install selected apps')
Local $uninstall = GUICtrlCreateRadio("Uninstall", 370, 40, 100)
GUICtrlSetState($uninstall, $GUI_CHECKED)
GUICtrlSetTip($uninstall, '#Action Uninstall selected apps')
Local $enable = GUICtrlCreateRadio("Enable", 370, 60, 100)
GUICtrlSetTip($enable, '#Action Enable selected apps')
Local $disable = GUICtrlCreateRadio("Disable", 370, 80, 100)
GUICtrlSetTip($disable, '#Action Disable selected apps')
#EndRegion GROUP WITH RADIO BUTTONS


#Region PROGRESS
Local $iProgress = GUICtrlCreateProgress(60, 435, 310, 20,$PBS_MARQUEE)
GUICtrlSetTip(-1, 'Action Progress')
GUICtrlSetData(-1, 60)
GUICtrlCreateLabel("Progress:", 5, 435)
#EndRegion PROGRESS

#Region BUTTON
Local $iExecuteButton = GUICtrlCreateButton("Execute", 380, 430, 100, 30)
GUICtrlSetTip(-1, '#Region BUTTON')
#EndRegion BUTTON

Local $packageIds[33] = ["com.android.browser","com.google.android.apps.docs","com.google.android.apps.maps","com.miui.screenrecorder","com.miui.videoplayer","com.xiaomi.midrop","com.xiaomi.mipicks","com.xiaomi.scanner","com.google.android.apps.photos","com.google.android.apps.tachyon","com.google.android.googlequicksearchbox","com.android.calendar","com.facebook.appmanager","com.facebook.services","com.facebook.system","com.google.android.inputmethod.latin","com.google.android.music","com.google.android.videos","com.google.android.youtube","com.mi.android.globalFileexplorer","com.miui.analytics","com.miui.bugreport","com.miui.calculator","com.miui.compass","com.miui.msa.global","com.miui.notes","com.miui.player","com.miui.fm","com.miui.huanji","com.mfashiongallery.emag","com.miui.personalassistant","com.android.email","com.google.android.inputmethod.latin"];
Local $processPackage[33];

#Region GUI MESSAGE LOOP
GUISetState(@SW_SHOW)
While 1
	Switch GUIGetMsg()
	Case $iMiBrowser
If _IsChecked($iMiBrowser) Then
 $processPackage[0]=True
Else
   $processPackage[0]=False
EndIf
Case $iGoogleDrive
If _IsChecked($iGoogleDrive) Then
 $processPackage[1]=True
Else
   $processPackage[1]=False
EndIf
Case $iGoogleMaps
If _IsChecked($iGoogleMaps) Then
 $processPackage[2]=True
Else
   $processPackage[2]=False
EndIf
Case $iMiScreenRecorder
If _IsChecked($iMiScreenRecorder) Then
 $processPackage[3]=True
Else
   $processPackage[3]=False
EndIf
Case $iMiVideo
If _IsChecked($iMiVideo) Then
 $processPackage[4]=True
Else
   $processPackage[4]=False
EndIf
Case $iMiDrop
If _IsChecked($iMiDrop) Then
 $processPackage[5]=True
Else
   $processPackage[5]=False
EndIf
Case $iMiApps
If _IsChecked($iMiApps) Then
 $processPackage[6]=True
Else
   $processPackage[6]=False
EndIf
Case $iMiScanner
If _IsChecked($iMiScanner) Then
 $processPackage[7]=True
Else
   $processPackage[7]=False
EndIf
Case $iGooglePhotos
If _IsChecked($iGooglePhotos) Then
 $processPackage[8]=True
Else
   $processPackage[8]=False
EndIf
Case $iGoogleDuo
If _IsChecked($iGoogleDuo) Then
 $processPackage[9]=True
Else
   $processPackage[9]=False
EndIf
Case $iGoogleApp
If _IsChecked($iGoogleApp) Then
 $processPackage[10]=True
Else
   $processPackage[10]=False
EndIf
Case $iCalendar
If _IsChecked($iCalendar) Then
 $processPackage[11]=True
Else
   $processPackage[11]=False
EndIf
Case $iFacebookAppManager
If _IsChecked($iFacebookAppManager) Then
 $processPackage[12]=True
Else
   $processPackage[12]=False
EndIf
Case $iFacebookServices
If _IsChecked($iFacebookServices) Then
 $processPackage[13]=True
Else
   $processPackage[13]=False
EndIf
Case $iFacebookAppInstaller
If _IsChecked($iFacebookAppInstaller) Then
 $processPackage[14]=True
Else
   $processPackage[14]=False
EndIf
Case $iGboard
If _IsChecked($iGboard) Then
 $processPackage[15]=True
Else
   $processPackage[15]=False
EndIf
Case $iGoogleMusic
If _IsChecked($iGoogleMusic) Then
 $processPackage[16]=True
Else
   $processPackage[16]=False
EndIf
Case $iPlayMovies
If _IsChecked($iPlayMovies) Then
 $processPackage[17]=True
Else
   $processPackage[17]=False
EndIf
Case $iYoutube
If _IsChecked($iYoutube) Then
 $processPackage[18]=True
Else
   $processPackage[18]=False
EndIf
Case $iFileExplorer
If _IsChecked($iFileExplorer) Then
 $processPackage[19]=True
Else
   $processPackage[19]=False
EndIf
Case $iAnalytics
If _IsChecked($iAnalytics) Then
 $processPackage[20]=True
Else
   $processPackage[20]=False
EndIf
Case $iMiFeedback
If _IsChecked($iMiFeedback) Then
 $processPackage[21]=True
Else
   $processPackage[21]=False
EndIf
Case $iCalculator
If _IsChecked($iCalculator) Then
 $processPackage[22]=True
Else
   $processPackage[22]=False
EndIf
Case $iMiCompass
If _IsChecked($iMiCompass) Then
 $processPackage[23]=True
Else
   $processPackage[23]=False
EndIf
Case $imas
If _IsChecked($imas) Then
 $processPackage[24]=True
Else
   $processPackage[24]=False
EndIf
Case $iMiNotes
If _IsChecked($iMiNotes) Then
 $processPackage[25]=True
Else
   $processPackage[25]=False
EndIf
Case $iMiMusic
If _IsChecked($iMiMusic) Then
 $processPackage[26]=True
Else
   $processPackage[26]=False
EndIf
Case $iMiFM
If _IsChecked($iMiFM) Then
 $processPackage[27]=True
Else
   $processPackage[27]=False
EndIf
Case $iMiMover
If _IsChecked($iMiMover) Then
 $processPackage[28]=True
Else
   $processPackage[28]=False
EndIf
Case $iMiWallpaperCarousel
If _IsChecked($iMiWallpaperCarousel) Then
 $processPackage[29]=True
Else
   $processPackage[29]=False
EndIf
Case $iAppVault
If _IsChecked($iAppVault) Then
 $processPackage[30]=True
Else
   $processPackage[30]=False
EndIf
Case $imail
If _IsChecked($imail) Then
 $processPackage[31]=True
Else
   $processPackage[31]=False
EndIf
Case $iGoogleKeyboard
If _IsChecked($iGoogleKeyboard) Then
 $processPackage[32]=True
Else
   $processPackage[32]=False
EndIf
    Case $iExecuteButton
	   $handle = _WinAPI_CreateFile("apps.txt",1)
	   _WinAPI_CloseHandle($handle)
	  $hFileOpen = FileOpen("apps.txt",$FO_OVERWRITE)
    For $i = 0 To UBound($processPackage) - 1
     If $processPackage[$i] Then
		FileWriteLine($hFileOpen, $packageIds[$i])
     EndIf
	Next
    ;RunWait("script.bat")
	FileClose($hFileOpen)
 Case $iFileSelectButton
	selectFolder()
    Case $GUI_EVENT_CLOSE
			ExitLoop

	EndSwitch
 WEnd

 Func _IsChecked($idControlID)
    Return BitAND(GUICtrlRead($idControlID), $GUI_CHECKED) = $GUI_CHECKED
EndFunc   ;==>_IsChecked


Func selectFolder()
    ; Create a constant variable in Local scope of the message to display in FileSelectFolder.
    Local Const $sMessage = "Select a ADB folder"
    ; Display an open dialog to select a file.
    Local $sFileSelectFolder = FileSelectFolder($sMessage, "")
    If @error Then
        GUICtrlSetData($idCTRL_EdtScreen,"No folder was selected.")
    Else
        ; Display the selected folder.
		    GUICtrlSetData($idCTRL_EdtScreen,$sFileSelectFolder)


    EndIf
 EndFunc   ;==>Example



GUIDelete()
#EndRegion GUI MESSAGE LOOP
