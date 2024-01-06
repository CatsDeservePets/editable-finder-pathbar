#!/usr/bin/env osascript

tell application "Finder"
	try
		set currentDir to POSIX path of (target of Finder window 1 as text)
	on error
		set currentDir to do shell script "defaults read com.apple.finder GoToField"
	end try
	-- Letting Finder know what to write into the path input
	do shell script "defaults write com.apple.finder GoToField " & quoted form of currentDir
end tell


tell application "System Events" to tell process "Finder"
	click menu item "Go to Folder…" of menu "Go" of menu bar item "Go" of menu bar 1
	
	repeat until exists sheet 1 of window 1
	end repeat

	-- Workaround for older MacOS versions where Finder did not read GoToField correctly
	(* ignoring application responses
		set value of text field of sheet 1 of window 1 to currentDir
	end ignoring *)

	-- Prevent path from being selected by moving cursor to the end
	key code 124 
end tell
