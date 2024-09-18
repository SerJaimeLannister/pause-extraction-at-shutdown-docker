#!/bin/bash

# Install unrar
apt-get update && apt-get install -y unrar
echo "Script run at: $(date)"
# Measure the time taken for unrar
START_TIME=$(date +%s)

# Unrar the file
unrar x /input/$RAR_FILE /output

END_TIME=$(date +%s)
# Calculate and print the elapsed time
ELAPSED_TIME=$(($END_TIME - $START_TIME))
echo "Time taken to unrar: $ELAPSED_TIME seconds"
