# File Sorting Script

This script helps organize files from a source directory into separate directories based on their file extensions.

## Usage

1. Place the script in the directory containing the files you want to sort.
2. Run the script by executing the command `./sort_files.sh`.

## Script Details

### Sorting Logic

- The script creates a directory named `sorted_files` to store the sorted files.
- It then identifies source and destination directories.
- Files are sorted into the following categories:
  - **Documents**: txt, pdf, doc, docx, xlsx
  - **Pictures**: jpg, png, gif, jpeg
  - **Videos**: mp4, mov, avi, mkv, mpeg
  - **Songs**: mp3, wav
  - **Others**: Files with extensions not listed above
- The script moves files from the source directory to their respective destination directories based on their extensions.

### Example

- If you have a file named `example.pdf` in your source directory, running the script will move it to `sorted_files/Documents`.

### Output

- After running the script, you will find the segregated files in the `$HOME/sorted_files` directory.

## Notes

- Make sure to adjust the `$source_files` variable in the script to point to the correct source directory.
- This script assumes that your source directory contains only the files you want to sort.
