#!/bin/bash

# Create a directory to store sorted files
mkdir sorted_files

# Define source and destination directories
source_files=$HOME/Downloads
new_files=$HOME/sorted_files

# Copy all files from source directory to destination directory
cp "$source_files"/* "$new_files"

# Create directories for different file types
mkdir -p "$new_files/Documents"
mkdir -p "$new_files/Pictures"
mkdir -p "$new_files/Videos"
mkdir -p "$new_files/Songs"
mkdir -p "$new_files/Others"

# Iterate over each file in the destination directory
for file in $new_files/*; do
    if [ -f "$file" ]; then
        # Get file extension
        extensions="${file##*.}"
        # Move files to respective directories based on their extensions
        case "$extensions" in
            txt|pdf|doc|docx|xlsx)
                mv "$file" "$new_files/Documents"
                ;;
            jpg|png|gif|jpeg)
                mv "$file" "$new_files/Pictures"
                ;;
            mp4|mov|avi|mkv|mpeg)
                mv "$file" "$new_files/Videos"
                ;;
            mp3|wav)
                mv "$file" "$new_files/Songs"
                ;;
            *)
                mv "$file" "$new_files/Others"
        esac
    fi
done

# Print message indicating the location of segregated files
echo "The segregated files are located at $HOME/sorted_files"
