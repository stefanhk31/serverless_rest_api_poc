#!/bin/bash

# Run dart pub get to ensure dependencies are installed
dart pub get

# Check if pub get was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to run 'dart pub get'. Aborting."
    exit 1
fi

# Compile Dart code to executable
dart compile exe lib/main.dart -o bootstrap
