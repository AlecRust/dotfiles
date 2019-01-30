#!/bin/bash

# Quit all open apps
osascript -e 'tell application "System Events" to set quitapps to name of every application process whose visible is true and name is not "Finder"
repeat with closeall in quitapps
quit application closeall
end repeat'

# Shut down
osascript -e 'tell app "System Events" to shut down'