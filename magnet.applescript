on open location magnetLink
	tell application "iTerm"
		tell current window
			set newTab to (create tab with default profile)
			set magnetUrl to quoted form of magnetLink
			set theCommand to "/usr/local/bin/webtorrent download " & magnetUrl & " -o $HOME/Movies"
			
			tell current session of newTab
				write text theCommand
			end tell
		end tell
	end tell
end open location
