#!/bin/bash

echo "Running 'vsce package' in order to create a vsix extension install file..."
vsce package

if [ $? -ne 0 ]; then
    echo "An error occured. Could not create vsix install file."
else
    echo "Vsix install file created. Moving to root of home directory: $HOME/synthwave-vs-code-color-theme-1.0.0.vsix"
    mv ./synthwave-vs-code-color-theme-1.0.0.vsix ~/.
fi

echo "Build script done."
