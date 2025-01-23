#!/bin/bash

# Check if ffmpeg and fzf are installed
if ! command -v ffmpeg &>/dev/null; then
  echo "Error: ffmpeg is not installed. Please install it first."
  exit 1
fi

if ! command -v fzf &>/dev/null; then
  echo "Error: fzf is not installed. Please install it first."
  exit 1
fi

# Select a video file using fzf
input_file=$(fzf --prompt="Select a video file: " --preview="ffmpeg -i {} 2>&1 | grep 'Duration'")
if [ -z "$input_file" ]; then
  echo "No file selected. Exiting."
  exit 1
fi

# Get the starting and ending times from the user
read -p "Enter starting time in seconds: " start_time
read -p "Enter ending time in seconds: " end_time

# Validate time inputs
if ! [[ "$start_time" =~ ^[0-9]+$ ]] || ! [[ "$end_time" =~ ^[0-9]+$ ]]; then
  echo "Error: Start and end times must be integers."
  exit 1
fi

if ((start_time >= end_time)); then
  echo "Error: Starting time must be less than ending time."
  exit 1
fi

# Extract file name and extension
filename=$(basename -- "$input_file")
extension="${filename##*.}"
basename="${filename%.*}"

# Generate output file name
output_file="${basename}_clip.${extension}"

# Use ffmpeg to create the clip
ffmpeg -i "$input_file" -ss "$start_time" -to "$end_time" -c copy "$output_file"

if [ $? -eq 0 ]; then
  echo "Clip created successfully: $output_file"
else
  echo "Error: Failed to create clip."
fi
