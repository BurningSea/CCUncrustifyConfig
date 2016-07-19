#!/bin/sh
PLUGINS_DIR="${HOME}/Library/Application Support/Developer/Shared/Xcode/Plug-ins"
PLUGIN_LOCATION="${PLUGINS_DIR}/UncrustifyPlugin.xcplugin"
if [ ! -d "${PLUGIN_LOCATION}" ]; then
	echo "Plugin not installed, start to download"
	curl -SL https://raw.githubusercontent.com/benoitsan/BBUncrustifyPlugin-Xcode/master/install.sh | sh
else
	echo "Plugin installed!"
fi

CONFIG_URI=https://github.com/BurningSea/CCUncrustifyConfig.git
CONFIG_DIR="${HOME}/.uncrustify"
if [ ! -d "${CONFIG_DIR}" ]; then
	mkdir -p "${CONFIG_DIR}"
	git clone $CONFIG_URI "${CONFIG_DIR}"
else
	echo "You've cloned the config dir!"
fi

echo "\nConfig successfuly cloned! Plz restart your Xcode \nAnd select Clang for the Formatter in Edit->Format Code->Preferences\nAnd select Custom Style (File) for Clang Style"
echo "\nFinally copy ~/.uncrustify/.clang-format to your Project! Enjoy it."