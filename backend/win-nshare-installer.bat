ECHO OFF
SET DownloadFolder=%USERPROFILE%\Downloads\
SET nodejs_msi_filename=node-v0.12.0-x64.msi
SET git_exe_filename=GitHubSetup.exe

if NOT EXIST %DownloadFolder%%nodejs_msi_filename% (	
	bitsadmin.exe /Transfer "Downloader NodeJS" http://nodejs.org/dist/v0.12.0/x64/%nodejs_msi_filename% %DownloadFolder%%nodejs_msi_filename%
)
if NOT EXIST %DownloadFolder%%git_exe_filename% (
	bitsadmin.exe /Transfer "Downloader Git" https://github-windows.s3.amazonaws.com/git_exe_filename% %DownloadFolder%%git_exe_filename%
)
if NOT EXIST %DownloadFolder%master.zip (
	bitsadmin.exe /Transfer "Downloader NshareDemon" https://github.com/voidcode/nshare-chrome-extension/archive/master.zip %DownloadFolder%nshare-chrome-extension-master.zip
)
ECHO Downloaded files is located in: %DownloadFolder%...


if EXIST %DownloadFolder%%nodejs_msi_filename% (
	ECHO Starter installed of NodeJS...
	msiexec.exe /i %DownloadFolder%%nodejs_msi_filename%	
	ECHO NodeJS installed dialog end...
)
if EXIST %DownloadFolder%%git_exe_filename% (
	ECHO Starter installed of Git for Windows...
	cd  %USERPROFILE%\Downloads\ 
	cmd.exe ./%git_exe_filename%
	ECHO Git installed dialog end...
)
if EXIST %DownloadFolder%nshare-chrome-extension-master (
	ECHO Starter installed of the NshareDemon...
	cd %DownloadFolder%nshare-chrome-extension-master\nshare-chrome-extension-master\

	ECHO config and installed of npm...TODO... HERE ... se the dot.bat-FILE
	node.exe npm install

	ECHO Install forever via npm...
	node.exe npm install

	ECHO Try to started the NshareDemon with NodeJS...
	cd backend\
	node.exe forever start nshare-demon.js


	ECHO You only need to installed the nshare-chrome-extention,\n then your are DONE :)
	start https://chrome.google.com/webstore/detail/nshare/lecapbjobhaloanokngngalcngdpklcf
)

PAUSE