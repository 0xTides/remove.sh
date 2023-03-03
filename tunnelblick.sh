#!/bin/bash

# Check if Tunnelblick.app exists
if [ -d "/Applications/Tunnelblick.app" ]; then
    echo "Tunnelblick.app found."

    # Check if Tunnelblick.app is currently open
    if pgrep -x "Tunnelblick" >/dev/null; then
        echo "Tunnelblick is currently open. Quitting the app..."
        osascript -e 'tell application "Tunnelblick" to quit'
    fi

    # Uninstall Tunnelblick.app
    echo "Uninstalling Tunnelblick.app..."
    sudo rm -rf "/Applications/Tunnelblick.app"
    sudo rm -rf ~/Library/Application\ Support/Tunnelblick
    sudo rm -rf ~/Library/Application\ Support/Tunnelblick\ VPN\ Configurations
    sudo rm -rf ~/Library/Application\ Support/Tunnelblick\ User\ OpenVPN\ Configuration\ Files
    sudo rm -rf ~/Library/LaunchAgents/net.tunnelblick.tunnelblick.LaunchAtLogin.plist
    sudo rm -rf ~/Library/Logs/Tunnelblick.log
    echo "Tunnelblick.app has been uninstalled."
else
    echo "Tunnelblick.app not found."
fi
