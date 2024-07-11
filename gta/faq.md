---
order: -1
label: First Launch & FAQ
---

## First Launch

### Log in
-![](https://i.imgur.com/5RZSY2h.png)
Log in to your account on [w1tch.net](https://w1tch.net/).

!!!info
If you have forgotten your password, use the [Forgot your password?](https://w1tch.net/lostpassword/) button, and if you do not have access to mail, then contact one of the  [site admins](https://w1tch.net/staff/)*.
!!!
-![]()-
-![]()-
-![]()-
-![]()-
-![]()-
-![]()-
-![]()-
-![]()-
-![]()-
-![]()-

### Download
Download [WLauncher](https://w1tch.net/files/file/103-w1tch-launcher-re-edition/).
-![](https://i.imgur.com/w8TTj2A.png)-

### Installation
Create a folder in any convenient locations for you.
Move all the contents from the archive to the folder. ![](https://i.imgur.com/eb23ryL.png)
!!!info
You can open the archive with [7-Zip](https://7-zip.org/).
!!!

### Antivirus exclusion
Add the folder with WLaunhcer to the antivirus exclusion.
How to do this for [Windows Defender](https://support.microsoft.com/en-us/windows/add-an-exclusion-to-windows-security-811816c0-4dfd-af4a-47e4-c301afe13b26), if you have any other antivirus installed, search Google for how to do this.\
![](https://i.imgur.com/O2eBnis.png)


### First opening of WLauncher
Open WLauncher.exe.
Write your login and password.
Click `Login` button.
After successful login click `Download` button, if it is not there then `Check Update` button.
-![](https://i.imgur.com/25ZaLiK.png)-

### Injection
Start the game and wait for it to load into **story mode**.
Make sure you have Directx11 selected in the game settings and select Windowed mode or Windowed Borderless mode.\
-![](https://i.imgur.com/2M2qrmw.png)-
Press the `Inject` button and wait for the menu to load.
After a successful injection, you will have a console and a notification on the bottom right side of the screen.
!!!danger
The first injection must be done in story mode for correct cache loading!
!!!
-![](https://i.imgur.com/jMt5oR6.png)-

### Opening menu
Press the F4 key to open the menu and the menu will be shown.
The mouse is used to navigate the menu.

-![](https://i.imgur.com/A5uE2NX.png)-

### Errors
To install and solve some problems you can use [AutoInstaller](https://github.com/voidshaman/W1tchInstaller) which was made by `voidshaman`
```
@echo off
powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command &{ iwr https://raw.githubusercontent.com/voidshaman/W1tchInstaller/main/W1tchInstaller.ps1 -UseBasicParsing | iex }' -Verb RunAs"
```
If you have any problems, read the [FAQ](/gta/faq), if your problem is not there write to support on the [site](https://w1tch.net/) or in [discord](https://discord.gg/CJaTCT8ZPD).

## FAQ

### .NET Core
-![](https://i.imgur.com/6F3sPRc.png)
To fix this problem, install the .NET Core published on the [w1tch](https://w1tch.net/files/file/3-net-core/) website. 
-![]()-
-![]()-
-![]()-
-![]()-
-![]()-
-![]()-

### Characters found in the W1TCH Launcher path differ from the standard unicode encoding.
-![](https://i.imgur.com/3nuSyvi.png) 
The path to WLauncher should not contain any special characters, only letters of the English alphabet.\
Example: `C:\Requiem\WLauncher.exe` ![](https://i.imgur.com/l3RNG7j.png)
-![]()-

### Authorization denied: wrong username/password?
Make sure that you have entered the correct username and password. If everything is correct, run WLauncher as admin. 
-![](https://i.imgur.com/crVo2Rx.png)-


### An error occurred during authorization! Perhaps server is under maintenance.
<!-- ![](https://) -->

Run WLauncher as admin. 

### libraryFilePath not set
Completely uninstall dotnet from your pc and install it again. Disable your Anti-Virus during installation
![](https://i.imgur.com/7wqTKJl.png)

### Only Requiem name is displayed
Set DirectX11 in the game.

-![](https://i.imgur.com/4przS9i.png)

### Mouse cursor stuck to the center of the screen.
Change the input method in the game.
![](https://i.imgur.com/EQjjzI8.png)

### Empty Vehicle/Ped/Object list
Remove all files from `C:\ProgramData\Requiem\Data\Cache` and inject in **story** mode
![](https://i.imgur.com/SwN0RMw.png)

### Hotkeys / Open Menu
The menu is opened with the `F4` key, navigation only with the mouse. There are also a few more hotkeys in the basic settings: `F5` => Teleport To Waypoint, `F6` => Teleport To Object and `NUM/` => NoClip, and you can also change them in **Settings > Hotkeys**. 

### Unlimited Subscribe
This subscription removes the restriction from all possible limits in the Recovery section, you can buy it in the [offcial store](https://funpay.com/users/3274952/) or from resellers.
!!!warning
Unlimited is not VIP!\
Subscription can be purchased by Basic users and VIP users alike.
!!!