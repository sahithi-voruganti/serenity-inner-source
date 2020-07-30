### Overview
NodeJS is a extension from [Joyant](https://www.joyent.com/) that builds on Google's V8 Engine that offers a very fast run-time enviornment for solutions built using JavaScript that can run both client-side (web and desktop - via Electron) and server side.  The speed comes from Google's non-blocking IO model.  
 
BE SURE TO TARGET VERSIONS:   **NPM** 6.4.1   **NODE** 10.14.1 (local) 11.1 (prod)
 
We recommended using Node Version Manager (NVM) for Windows to be able to support switching between NodeJS versions (which also influences the active NPM version).  We have found install issues on some Windows 10 Machines running McAfee.  Follow these instructions to avoid install issues: https://medium.com/@tysonpaul89/maintain-multiple-versions-of-node-js-in-windows-operating-system-using-nvm-3c6bf5b63f29

Alternatively, to install NodeJS directly go to https://nodejs.org/, but you want be able to switch versions so be sure to install the correct version (see above).  
 
Additional details about configuring and switching versions using NVM are below
 
Another helpful guide is: [Set up your Node.js development environment directly on Windows](https://docs.microsoft.com/en-us/windows/nodejs/setup-on-windows)

### NVM Alternatives
If you have install issues with NVM or are running on a non-windows machine, try the following:
 
While windows-nvm is currently the most popular version manager for node, there are alternatives to consider:

[nvs](https://github.com/jasongin/nvs) (Node Version Switcher) is a cross-platform nvm alternative with the ability to [integrate with VS Code](https://github.com/jasongin/nvs/blob/master/doc/VSCODE.md).

[Volta](https://github.com/jasongin/nvs/blob/master/doc/VSCODE.md) is a new version manager from the LinkedIn team that claims improved speed and cross-platform support.

To install Volta as your version manager (rather than windows-nvm), go to the **Windows Installation** section of their [Getting Started guide](https://docs.volta.sh/guide/getting-started), then download and run their Windows installer, following the setup instructions.

 Important

> You must ensure that [Developer Mode](https://docs.volta.sh/guide/getting-started) is enabled on your Windows machine before installing Volta.

To learn more about using Volta to install multiple versions of Node.js on Windows, see the [Volta Docs](https://docs.volta.sh/guide/understanding#managing-your-toolchain).

### Node Version Manager (NVM)
Use Node Version Manager (NVM) to support multiple versions:

- Windows: https://github.com/coreybutler/nvm-windows
- Linux and MAC: https://github.com/nvm-sh/nvm

#### Note:

This solution uses older versions of NodeJS.  Uses older versions will cause warning to be triggered like:
> npm WARN npm npm does not support Node.js vXX.XX.XX
These can be ignored.

It's best to do uninstall any direct node installs before installing NVM.  Even though the install on windows seems to merge existing installs, you'll likely still run into issues with the Node Package Manager (NPM).  See Uninstall Existing Node Documentation below:

Once installed, run the following to install the latest version of NodeJS:

#### Useful NVS Commands

**List Versions currently installed**
> "engines" : { "node" : ">=0.12" }
>> list

**Install version**
> nvm install "latest"

or 
> nvm install 10.1


**Set current version**
> nvm use 10.1

### Set NPM Versions
You can change your NPM Versions up or down using the following
 
#### Getting Lastest NPM
Node comes with npm installed so you should have a version of npm. However, npm gets updated more frequently than Node does, so you'll want to make sure it's the latest version.

> npm install npm@latest -g

#### Targeting Specific NPM Version
Just replace @latest with the version number you want to downgrade to. I wanted to downgrade to version 3.10.10, so I used this command:

> npm install -g npm@3.10.10

#### Note: 
If you do a lot of version switching, you might run into the following issue:

Error: Node Sass does not yet support your current orted please see:
environment: Windows 64-bit with Unsupported runtim1.0e

There's an easy fix:

> npm rebuild node-sass

Additional information can be found [here](https://medium.com/@proustibat/how-to-fix-error-node-sass-does-not-yet-support-your-current-environment-os-x-64-bit-with-c1b3298e4af0).  This approach requires python to be installed.

### Uninstall Existing Node and NPM Versions
#### Uninstall existing Node Version
Please note, you need to uninstall any existing versions of node.js before installing NVM for Windows. Also delete any existing nodejs installation directories (e.g., "C:\Program Files\nodejs") that might remain. NVM's generated symlink will not overwrite an existing (even empty) installation directory.

 
#### Uninstall existing NPM Version
You should also delete the existing npm install location (e.g. "C:\Users\<user>\AppData\Roaming\npm"), so that the nvm install location will be correctly used instead. Backup the global `npmrc` config (e.g. `C:\Users\&lt;user&gt;\AppData\Roaming\npm\etc\npmrc`), if you have some important settings there, or copy the settings to the user config `C:\Users\&lt;user&gt;\.npmrc`.

### Helpful Tools

|TOOL  |DESCRIPTION  |NOTES  |
|---------|---------|---------|
|NPM-Check     |    Display package versions and if updates are available.     |     Warning: Careful on making updates.  Those are sweeping changes that shouldn't be taken lightly (unless of course you're not installing into the solution or changing dependencies) .     |

### ESLint Issues
Sometimes ESLint causes a lot of issues.  This often happens on a fresh clone that came from a repo built by a different OS.  This issue can be easily resolved by running:

> npm run lint -- --fix