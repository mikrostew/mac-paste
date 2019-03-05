# mac-paste

Some web sites and OSX dialogs disable the ability to paste into them, usually for passwords.
Maybe they think this is increasing security, but really it's just frustrating and prevents easy use of a secure password from a password manager.

This script gets around these paste limitations by typing the clipboard contents one character at a time, as if you had typed it yourself.
They can't block that.


## Setup

I set this up to use the hotkey `Ctrl-⌥-⌘-V` (Control-Option-Command-V), but you can use whatever makes sense for you.


### 1. Create a service using Automator

Launch Automator (hit `⌘`-Space to use spotlight)

Click "File" > "New"

Select "Quick Action" and click "Choose" (this used to be called "Service")

In the top right hand of the window, set dropdowns so that 'Workflow recieves "no input" in "any application"'

In the second column containing the long list, search for "apple" and double-click "Run AppleScript" - this adds the "Run AppleScript" window on the right

Paste the code from the `mac-paste.scpt` file into the text box (you can click the little hammer icon to get nice formatting)

Click "File" > "Save...", and save this as "MacPaste" (or whatever name you want)


### 2. Create the hotkey shortcut

In System Preferences, click "Keyboard" > "Shortcuts"

Select "Services" in the sidebar

Find "MacPaste" under "General", and select it

Click "Add Shortcut"

type `Ctrl-⌥-⌘-V` (Control-Option-Command-V) to assign that shortcut (or whatever shortcut you want)


### 3. Allow this shortcut to run from anywhere

(You should only have to set this up for your first Automator action)

In System Preferences, click "Security & Privacy" > "Privacy"

Click the padlock in the lower left to allow changes (you will have to type your password)

Select "Accessibility" in the sidebar

Click on the + sign, and add Automator from /Applications

For every application you will use this with, you have to give them Accessibility permissions

For example, running this the first time, click those dialogs, then add Chrome to Accessibility

Click the padlock to close it, and exit System Preferences

**Done!**

Now no one can stop your pasting

