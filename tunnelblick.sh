#!/bin/bash

# Define the name of the Tunnelblick process
tunnelblick_process="Tunnelblick"

# Check if Tunnelblick.app exists
if [ -d "/Applications/Tunnelblick.app" ]; then
    echo "Tunnelblick.app found."

    # Check if Tunnelblick is currently running
    if pgrep -x "$tunnelblick_process" >/dev/null; then
        echo "Tunnelblick is currently running. Killing the process..."
        pkill "$tunnelblick_process"
    fi

    # Uninstall Tunnelblick.app
    echo "Uninstalling Tunnelblick.app..."
    sudo rm -rf "/Applications/Tunnelblick.app"
    sudo rm -rf "$HOME/Library/Application Support/Tunnelblick"
    sudo rm -rf "$HOME/Library/Application Support/Tunnelblick VPN Configurations"
    sudo rm -rf "$HOME/Library/Application Support/Tunnelblick User OpenVPN Configuration Files"
    sudo rm -rf "$HOME/Library/LaunchAgents/net.tunnelblick.tunnelblick.LaunchAtLogin.plist"
    sudo rm -rf "$HOME/Library/Logs/Tunnelblick.log"
    echo "Tunnelblick.app has been uninstalled."
else
    echo "Tunnelblick.app not found."
fi
