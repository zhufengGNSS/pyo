; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define appName "pyo"
#define pyVer "3.6"
#define appVer "0.8.6"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C33D5687-694D-4000-AF85-191E2DC66F64}
AppName={#appName}
AppVersion={#appVer}
AppPublisher=ajaxsoundstudio.com
AppPublisherURL=https://github.com/belangeo/pyo
AppSupportURL=https://github.com/belangeo/pyo
AppUpdatesURL=https://github.com/belangeo/pyo
DefaultDirName={code:GetDirName}
DisableDirPage=no
AlwaysShowDirOnReadyPage=yes
DefaultGroupName={#appName}
AllowNoIcons=yes
InfoBeforeFile=C:\Users\olivier\git\pyo\installers\win\\README-win32-py36.txt
LicenseFile=C:\Users\olivier\git\pyo\COPYING.txt
OutputBaseFilename={#appName}_{#appVer}_py{#pyVer}_setup
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
ChangesEnvironment=yes
DirExistsWarning=no
SetupIconFile=C:\Users\olivier\git\pyo\utils\E-PyoIcon.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\pyo.py"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion 
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\pyo64.py"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\pyolib\*"; DestDir: "{app}\Lib\site-packages\pyolib"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\_pyo.cp36-win32.pyd"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\_pyo64.cp36-win32.pyd"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\libsndfile-1.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\liblo-7.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\portaudio.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\portmidi.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\porttime.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\pthreadVC2.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\pthreadGC2.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\dcomp.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\gpsvc.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\sysntfy.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\msvcr100.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\MinGW\bin\libgcc_s_dw2-1.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\MinGW\bin\libstdc++-6.dll"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\AppData\Local\Programs\Python\Python36-32\Lib\site-packages\pyo-{#appVer}-py{#pyVer}.egg-info"; DestDir: "{app}\Lib\site-packages"; Flags: ignoreversion
Source: "C:\Users\olivier\git\pyo\examples\*"; DestDir: "{userdesktop}\pyo_examples\"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

; E-Pyo stuff
Source: "C:\Users\olivier\git\pyo\utils\E-Pyo_py36\E-Pyo.exe"; DestDir: "{pf}\E-Pyo"; Flags: ignoreversion
Source: "C:\Users\olivier\git\pyo\utils\E-Pyo_py36\Resources\*"; DestDir: "{pf}\E-Pyo\Resources"; Flags: ignoreversion recursesubdirs createallsubdirs

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Icons]
Name: "{group}\E-Pyo"; Filename: "{pf}\E-Pyo\E-Pyo.exe"; WorkingDir: "{pf}\E-Pyo"
Name: "{commondesktop}\E-Pyo"; Filename: "{pf}\E-Pyo\E-Pyo.exe"; Tasks: desktopicon

[Run]
Filename: "{pf}\E-Pyo\E-Pyo.exe"; Description: "{cm:LaunchProgram,E-Pyo}"; Flags: nowait postinstall skipifsilent

[InstallDelete]
Type: filesandordirs; Name: "{userdesktop}\pyo_examples";
Type: filesandordirs; Name: "{userdocs}\.epyo";
;;;;;;;;;;;;;

[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{app};{olddata}"; Check: NeedsAddPath('{app}')

[Code]
procedure ExitProcess(exitCode:integer);
  external 'ExitProcess@kernel32.dll stdcall';

function NeedsAddPath(Param: string): boolean;
var
  OrigPath: string;
begin
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
    'Path', OrigPath)
  then begin
    Result := True;
    exit;
  end;
  // look for the path with leading and trailing semicolon
  // Pos() returns 0 if not found
  Result := Pos(';' + Param + ';', ';' + OrigPath + ';') = 0;
end;

function GetDirName(Value: string): string;
var          
  InstallPath: string;
  reg1 : string;
  reg2 : string;
  reg3 : string;
  reg4 : string;
begin
  reg1 := 'SOFTWARE\Python\PythonCore\' + '{#PyVer}' + '-32\InstallPath';
  reg2 := 'SOFTWARE\Wow6432Node\Python\PythonCore\' + '{#PyVer}' + '-32\InstallPath';
  reg3 := 'Software\Python\PythonCore\' + '{#PyVer}' + '-32\InstallPath';
  reg4 := 'Software\Wow6432Node\Python\PythonCore\' + '{#PyVer}' + '-32\InstallPath';
  if RegQueryStringValue(HKLM, reg1, '', InstallPath) then
    BEGIN
    Result := InstallPath;
  END else
  if RegQueryStringValue(HKCU, reg3, '', InstallPath) then
    BEGIN
    Result := InstallPath;
  END else
  if RegQueryStringValue(HKLM, reg2, '', InstallPath) then
    BEGIN
    Result := InstallPath;
  END else
  if RegQueryStringValue(HKCU, reg4, '', InstallPath) then
    BEGIN
    Result := InstallPath;
  END else
    BEGIN
    Result := 'C:\Python36-32';
   END
end;