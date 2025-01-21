#!/bin/bash

echo "Script to install git"
echo "Installation started"

if [ "$(uname)" == "Linux" ]; then
    echo "This is a Linux box, installing git"
    apt update
    apt install git -y
elif [ "$(uname)" == "Darwin" ]; then
    echo "This is not a Linux box"
    echo "This is macOS"
    brew install git
else
    echo "Not installing"
fi
