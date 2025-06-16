#!/bin/bash

# Print a message to indicate the script is running
echo "Running build_runner..."

# Run the build_runner command
fvm flutter pub run build_runner build --delete-conflicting-outputs

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "✅ Build completed successfully!"
else
    echo "❌ Build failed!"
    exit 1
fi 