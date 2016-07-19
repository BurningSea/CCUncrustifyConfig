#!/bin/sh

DOWNLOAD_URI=https://github.com/benoitsan/BBUncrustifyPlugin-Xcode/releases/download/2.1.6/UncrustifyPlugin-2.1.6.zip
PLUGINS_DIR="${HOME}/Library/Application Support/Developer/Shared/Xcode/Plug-ins"

mkdir -p "${PLUGINS_DIR}"
cd "${PLUGINS_DIR}"
curl -SL $DOWNLOAD_URI > UncrustifyPlugin.zip
unzip -oq UncrustifyPlugin.zip
rm UncrustifyPlugin.zip
rm -rf __MACOSX

echo "\nBBUncrustifyPlugin successfuly installed!"

CONFIG_URI=https://github.com/BurningSea/CCUncrustifyConfig.git
CONFIG_DIR="${HOME}/.uncrustify"
mkdir -p "${CONFIG_DIR}"
git clone $CONFIG_URI "${CONFIG_DIR}"

echo "\nConfig successfuly cloned! Plz restart your Xcode and \nSelect Clang for the Formatter in Edit->Format Code->Preferences\nAnd select Custom Style (File) for Clange Style"
echo "\nFinally copy ~/.uncrustify/.clang-format to your Project! Enjoy it."