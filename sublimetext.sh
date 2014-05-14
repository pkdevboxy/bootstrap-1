export BOOTSTRAP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/
cp "${BOOTSTRAP_DIR}/init/sublime-text/Sublime Text.icns" "/Applications/Sublime Text.app/Contents/Resources/Sublime Text.icns"

cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
git clone https://github.com/wbond/sublime_package_control.git "Package Control"

cp -r "${BOOTSTRAP_DIR}/init/sublime-text/User" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/