#!/bin/bash

# Set the path to the Applications folder
APPS_PATH="/Applications"

# Check if Tunnelblick.app exists in the Applications folder
if [ -d "$APPS_PATH/Tunnelblick.app" ]; then
    # Remove Tunnelblick.app
    rm -rf "$APPS_PATH/Tunnelblick.app"
    echo "Tunnelblick.app has been removed."
else
    echo "Tunnelblick.app was not found in the Applications folder."
fi
