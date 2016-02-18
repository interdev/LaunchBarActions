#!/bin/bash
#
# LaunchBar Action Script
#

#verify if the profiles exist - if not provide a sample

if [ ! -d ~/ChromeProfileControl ];then
cp -nR ../Resources/ChromeProfileControl ~/
fi

#import the workflow handler script
. workflowhandler.sh

for profile in `ls ~/ChromeProfileControl/$1*`; do
# addResult "uid" "arg" "title" "subtitle" "icon" "valid" "autocomplete"
subTitle=`grep extraDetail $profile|cut -d= -f2|sed "s/['\"]//g"`
addResult "chrome-launch-profile-${profile##*/}" "${profile##*/}" "${profile##*/}" "launch with profile for $subTitle" "icon.png" "yes" "${profile##*/}"
done
getXMLResults

#echo $@
#echo $@$@
