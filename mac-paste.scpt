# Get around paste limitations by simulating keystrokes using applescript

# to set this up to run as hotkey Ctrl-⌥ -⌘ -V (Control-Option-Command-V)
# (instructions adapted from https://apple.stackexchange.com/a/276839)
#
# 1. Create a service using Automator
#
# Launch Automator (hit ⌘ -Space to use spotlight)
# File > New
# Select "Service" and click "Choose"
# In the top right hand of the window:
#   set dropdowns so that 'Service recieves "no input" in "any application"'
# In the second column containing the long list, double-click "Run AppleScript"
#   (this adds the Run AppleScript window on the right)
# Paste the code under "PASTE THIS CODE:" below into the text box
#   (you can click the little hammer icon to get nice formatting)
# File > Save...
#   save this as "MacPaste"
#
# 2. Create the hotkey shortcut
#
# System Preferences > Keyboard > Shortcuts
# Select "Services" in the sidebar
# Find "MacPaste" under "General"
# Click on the service name
# Click "Add Shortcut"
# type "Ctrl-⌥ -⌘ -V" (Control-Option-Command-V) to assign that shortcut
#
# 3. Allow this shortcut to run from anywhere
#   (should only have to set this up for the first Automator script)
#
# System Preferences > Security & Privacy > Privacy
# click the padlock in the lower left to allow changes
# Select "Accessibility" in the sidebar
# Click on the + sign
# Add Automator
# Add Finder (navigate to /System/Library/CoreServices/Finder)
# click the padlock to close it
# Exit System Preferences
#
# Now you should be able to run this keyboard shortcut from anywhere
# BUT, you will have to enable Accessibility access the first time (for Chrome, etc.)

# PASTE THIS CODE:
tell application "System Events"
    repeat with char in the characters of (the clipboard)
        keystroke char
    end repeat
end tell

