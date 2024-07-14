-----------------------------------------------------------------------
# Auth: Christopher Stone
# dCre: 2010/10/06 06:43
# dMod: 2015/04/27 18:38
# Appl: Finder
# Task: Get posix path of selected items or if none the front window and copy to clipboard.
# Libs: None
# Osax: None 
# Tags: @Applescript, @Finder, @Posix, @Path, @Selection

# Modified by: Unknown Crafts
# New Task: Opens selected folders/files in vscode
-----------------------------------------------------------------------

tell application "Finder"
	set fileList to selection as alias list
	if length of fileList = 0 then
		set fileList to insertion location as alias as list
	end if
end tell

if length of fileList > 0 then
	repeat with ndx in fileList
		set ndx's contents to POSIX path of ndx
		tell application "Visual Studio Code" to open POSIX path of ndx
	end repeat
end if
