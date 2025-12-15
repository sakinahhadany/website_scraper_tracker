#!/bin/bash

URL_FILE="gp_url.txt"
OUTPUT_DIR="raw_html"
LOG_FILE="scrape.log"

# Verifying the directory exists
mkdir -p "$OUTPUT_DIR"

echo "--- Scraping Ran at $(date) ---" >> "$LOG_FILE"

# Loop through the url list in raw_html
while IFS= read -r URL; do
    GP_ID=$(echo "$URL" | awk -F'/' '{print $NF}')
    OUTFILE="$OUTPUT_DIR/$GP_ID.html"

    echo "Scraping $URL" >> "$LOG_FILE"

    # Download the html silently and retry up to 3 times
    curl -sL --retry 3 "$URL" -o "$OUTFILE"

    # Check if the results table exist in the html
    if grep -q "class=\"results\"" "$OUTFILE"; then 
        echo "Result found for Grand Prix ID $GP_ID" >> "$LOG_FILE"
    else
        echo "No results available yet" >> "$LOG_FILE"
    fi
done < "$URL_FILE"
