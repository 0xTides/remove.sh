#!/bin/bash

# Set the path to the Applications folder
APPS_PATH="/Applications"

# Check if Tunnelblick.app exists in the Applications folder
if [ -d "$APPS_PATH/Tunnelblick.app" ]; then
    # Remove Tunnelblick.app
    rm -rf "$APPS_PATH/Tunnelblick.app"
    # Display a dialog box to the user
    osascript -e 'tell application "System Events" to display dialog "Tunnelblick.app has been uninstalled." with title "Uninstall Complete" buttons {"OK"} default button 1'
else
    # Display a dialog box to the user
    osascript -e 'tell application "System Events" to display dialog "Tunnelblick.app was not found in the Applications folder." with title "Uninstall Complete" buttons {"OK"} default button 1'
fi
