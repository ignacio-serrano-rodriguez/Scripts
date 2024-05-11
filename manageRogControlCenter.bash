#!/bin/bash

# Check if the process is running
if pgrep -f "rog-control-center" > /dev/null
then
    echo "The process is running or sleeping, killing it now..."
    pkill -f "rog-control-center"
else
    echo "The process is not alive, running it now..."
    rog-control-center > /dev/null &
    sleep 0.2
    rog-control-center
fi