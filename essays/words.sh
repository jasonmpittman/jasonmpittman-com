#!/bin/bash

# Specify the directory to read files from
directory="."

# Iterate over each file in the directory
for file in "$directory"/*; do
    # Checkif the file is a regular file
    if [[ -f "$file" ]]; then
        # Get the filename
        filename=$(basename "$file")
        
        # Count the number of words in the file
        word_count=$(wc -w < "$file")
        
        # Print the filename and word count
        echo "File: $filename"
        echo "Word Count: $word_count"
        echo
    fi
done

