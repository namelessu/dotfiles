#!/bin/env bash

pid_file="/tmp/wf-recorder.pid"

# If wf-recorder is already running, stop it
if [[ -f "$pid_file" ]] && kill -0 "$(cat "$pid_file")" 2>/dev/null; then
    kill -INT "$(cat "$pid_file")"
    notify-send -h string:wf-recorder:record -t 1000 "Finished Recording"
    rm -f "$pid_file"
    exit 0
fi

# Notify that recording has started
notify-send -h string:wf-recorder:record -t 1000 "Started Recording"

# Output filename
dateTime=$(date +%m-%d-%Y-%H:%M:%S)
output="$HOME/Videos/$dateTime.mp4"

# Get default sink
default_sink=$(pactl info | grep 'Default Sink' | cut -d' ' -f3)
monitor_source="${default_sink}.monitor"

# Start wf-recorder in background and save its PID
wf-recorder -a --audio="$monitor_source" -f "$output" &
echo $! > "$pid_file"

