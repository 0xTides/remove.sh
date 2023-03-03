#!/bin/bash

# Set the path to the Applications folder
APPS_PATH="/Applications"

# Check if Tunnelblick.app exists in the Applications folder
if [ -d "$APPS_PATH/Tunnelblick.app" ]; then
    # Remove Tunnelblick.app
    rm -rf "$APPS_PATH/Tunnelblick.app"
    # Display a pop-up notification
    osascript -e 'display notification "Tunnelblick.app has been uninstalled." with title "Uninstall Complete"'
else
    # Do not display a pop-up notification
    echo "Tunnelblick.app was not found in the Applications folder."
fi
