#!/bin/bash
# Logging the state before the operation
echo "Checking contents of /data-opt-jitterbit..."
ls -A /data-opt-jitterbit/
# List all files in /data-opt-jitterbit, ignoring lost+found
if [ -z "$(ls -A /data-opt-jitterbit | grep -v lost+found)" ]; then
    echo "/data-opt-jitterbit is empty except for lost+found. Copying data..."
    cp -a /opt/jitterbit/* /data-opt-jitterbit/
else
    echo "/data-opt-jitterbit already has data. No need to copy."
fi
# Log after operation
echo "Contents of /data-opt-jitterbit after the operation:"
ls -A /data-opt-jitterbit/