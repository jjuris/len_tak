#!/bin/bash

# Check if input video file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_video_file>"
    exit 1
fi

input_video="$1"
output_image="screenshot.png"

# Extract screenshot using ffmpeg
ffmpeg -i "$input_video" -ss 00:00:01.000 -frames:v 1 -update 1 "$output_image"

echo "Screenshot saved as $output_image"
