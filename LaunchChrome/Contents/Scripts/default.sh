#!/bin/sh
#
# LaunchBar Action Script
#
profile="Default"
extraDetail=""
cmdExtra=""

if [ -f ~/ChromeProfileControl/$1 ]; then
. ~/ChromeProfileControl/$1
fi

open -a Google\ Chrome --new --args --profile-directory="$profile" $cmdExtra

/usr/bin/osascript -e "display notification \"${1} - ${extraDetail}\" with title \"Launch Chrome with profile\""
