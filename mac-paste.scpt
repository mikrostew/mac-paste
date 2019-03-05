# PASTE THIS CODE:
tell application "System Events"
    repeat with char in the characters of (the clipboard)
        keystroke char
    end repeat
end tell
