#!/bin/sh
PLUGINS_DIR="${HOME}/Library/Application Support/Developer/Shared/Xcode/Plug-ins"
PLUGIN_LOCATION="${PLUGINS_DIR}/UncrustifyPlugin.xcplugin"
if [ ! -d "${PLUGIN_LOCATION}" ]; then
	echo "Plugin not installed, start to download"
	curl -SL https://raw.githubusercontent.com/benoitsan/BBUncrustifyPlugin-Xcode/master/install.sh | sh
else
	echo "Plugin Installed"
fi

CONFIG_URI=https://github.com/BurningSea/CCUncrustifyConfig.git
CONFIG_DIR="${HOME}/.uncrustify"
mkdir -p "${CONFIG_DIR}"
git clone $CONFIG_URI "${CONFIG_DIR}"

echo "\nConfig successfuly cloned! Plz restart your Xcode and \nSelect Clang for the Formatter in Edit->Format Code->Preferences\nAnd select Custom Style (File) for Clange Style"
echo "\nFinally copy ~/.uncrustify/.clang-format to your Project! Enjoy it."