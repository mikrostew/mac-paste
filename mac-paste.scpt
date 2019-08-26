# PASTE THIS CODE:
tell application "System Events"
    repeat with char in the characters of (the clipboard)
        keystroke char
    end repeat
end tell


# OR, if you want some delay in there:
tell application "System Events"
	local position
	set position to 0
	repeat with char in the characters of (the clipboard)
		keystroke char
		set position to position + 1
		if position mod 15 is equal to 0 then
			delay 0.2
		end if
	end repeat
end tell
