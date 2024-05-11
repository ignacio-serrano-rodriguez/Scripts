#!/bin/bash

# Variable to keep track of the current state
state_file="/tmp/profile_state.txt"

# If the state file doesn't exist, create it and set the initial state to 0
if [ ! -f $state_file ]; then
  echo "0" > $state_file
fi

# Read the current state
state=$(cat $state_file)

# Determine the next profile and update the state
case $state in
  "0")
    next_profile="Quiet"
    new_state="1"
    ;;
  "1")
    next_profile="Balanced"
    new_state="2"
    ;;
  "2")
    next_profile="Performance"
    new_state="0"
    ;;
  *)
    echo "Unknown state: $state"
    exit 1
    ;;
esac

# Set the next profile
asusctl profile -P $next_profile

# Update the state
echo $new_state > $state_file

# Print the new profile
echo "Switched to $next_profile profile"

# Show a desktop notification with the new profile
notify-send "Switched to $next_profile profile"