#!/bin/bash
clear
WELCOME="Welcome to fluffy's cider install script"
WARN="This step could take a little while on some machines."
DEPS="which of these Dependencies do you have installed?"
DEV="what kind of device is this?"
WARN2="On some low-end machines this process could take up to ~10 minutes."
echo "$WELCOME"
sleep 5s



echo "$DEPS:1 for node.js | 2 for pnpm (Optional, but highly recommended)"
read input
clear
if [[ $input == "1" || $input == "2" ]]; then
        git clone https://github.com/ciderapp/Cider.git &&
	cd Cider &&
	git pull &&
	npm install --force
echo"$WARN"

else
        git clone https://github.com/ciderapp/Cider.git &&
	cd Cider &&
	git pull &&
	pnpm install
echo"$WARN"
fi



echo "$DEV: 1 for x86_64 machines | 2 for x86 ONLY machines. (Legacy PC's)"
read input
clear
if [[ $input == "1" || $input == "2" ]]; then
echo "$WARN2" &&
	npm run dist -l --x64

else

echo"$WARN2" &&

npm run dist -l --ia32

fi

echo "Would you like to copy cider to your $HOME? (Y or N)"
read input
clear
if [[ $input == "Y" || $input == "N" ]]; then
        mv $HOME/Cider/dist/Cider-*.AppImage $HOME
echo"Done"

else
        echo "Thanks for using fluffy's cider install script"
fi
clear
 echo "Thanks for using fluffy's cider install script"
