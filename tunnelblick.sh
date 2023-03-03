#!/bin/bash

# Check if Tunnelblick.app exists
if [ -d "/Applications/Tunnelblick.app" ]; then
    echo "Tunnelblick.app found."

    # Check if Tunnelblick.app is currently open
    if pgrep -x "Tunnelblick" >/dev/null; then
        echo "Tunnelblick is currently open. Quitting the app..."
        osascript -e 'quit app "Tunnelblick"'
    fi

    # Uninstall Tunnelblick.app
    echo "Uninstalling Tunnelblick.app..."
    rm -rf "/Applications/Tunnelblick.app"
    rm -rf ~/Library/Application\ Support/Tunnelblick
    rm -rf ~/Library/Application\ Support/Tunnelblick\ VPN\ Configurations
    rm -rf ~/Library/Application\ Support/Tunnelblick\ User\ OpenVPN\ Configuration\ Files
    rm -rf ~/Library/LaunchAgents/net.tunnelblick.tunnelblick.LaunchAtLogin.plist
    rm -rf ~/Library/Logs/Tunnelblick.log
    echo "Tunnelblick.app has been uninstalled."
else
    echo "Tunnelblick.app not found."
fi
