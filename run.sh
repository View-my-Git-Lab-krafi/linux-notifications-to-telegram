#!/bin/bash

# Set the Telegram Bot API key and chat ID
# search offical "BotFather" telegram for , and create a api key, Dont forget to join your bot first than run this script.
TELEGRAM_API_KEY="YOUR_TELEGRAM_API_KEY" 
#search for a telegram bot "userunfobot" it will tell you your ID 10******
TELEGRAM_CHAT_ID="YOUR_TELEGRAM_CHAT_ID"

# Continuously monitor for notifications
while true; do
# Use dbus-monitor to listen for notifications from the org.freedesktop.Notifications interface
# Filter for lines that contain either the string "member=Notify" or "string"
# Extract the text string from lines that contain "string"
output=$(timeout 5s dbus-monitor "interface='org.freedesktop.Notifications'" | \
grep --line-buffered "member=Notify\|string" | \
awk -F'"' '/string/ {print $2}')

# Check if the output starts with ":1.", indicating that the message is coming from a specific application
# If it does, remove the first 17 characters from the output
if [[ "$output" =~ ^:1\. ]]; then
output="${output:17}"
fi

# Check if the output is not empty
if [ ! -z "$output" ]; then
# Print the notification message to the console
echo -e "$output"

# Encode the notification message in URL format using jq
message=$(echo "$output" | jq -sRr @uri)

# Send the notification message to the Telegram chat using curl and the Telegram Bot API
curl -s "https://api.telegram.org/bot${TELEGRAM_API_KEY}/sendMessage?chat_id=${TELEGRAM_CHAT_ID}&text=${message}"
fi
done
