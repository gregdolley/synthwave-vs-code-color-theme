#!/bin/bash

code --install-extension ~/synthwave-vs-code-color-theme-1.0.0.vsix

if [ $? -ne 0 ]; then
    echo "An error occured while installing the extension."
else
    echo "Deleting temporary vsix install file."
    rm ~/synthwave-vs-code-color-theme-1.0.0.vsix
fi

echo "Install script done."
