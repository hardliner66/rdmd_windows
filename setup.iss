; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "rdmd_win"
#define MyAppVersion "1"
#define MyAppPublisher "_"
#define MyAppURL "https://github.com/hardliner66/rdmd_windows"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6A807379-5725-4783-B1B2-E854EE5D381D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\D\dmd2\windows\bin
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=rdmd_win_setup
Compression=lzma
SolidCompression=yes
Uninstallable=yes
DirExistsWarning=no
UsePreviousAppDir=no
OutputDir=Installer

[Registry]
Root: HKCR; Subkey: ".d"; ValueType: string; ValueName: ""; ValueData: "d_auto_file"
Root: HKCR; Subkey: "d_auto_file\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """C:\D\dmd2\windows\bin\rdmd_win.bat"" ""%1"" %*"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "rdmd_win.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "rdmd_win.d"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

