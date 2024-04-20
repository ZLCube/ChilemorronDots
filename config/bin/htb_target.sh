#!/bin/sh

ip_target=$(cat ~/.config/bin/target | awk '{print $1}')
name_target=$(cat ~/.config/bin/target | awk '{print $2}')

if [ $ip_target ] && [ $name_target ]; then
	echo "%{F#2986cc}什%{F#000000} $ip_target - $name_target"
elif [ $(cat ~/.config/bin/target | wc -w) -eq 1 ]; then
	echo "%{F#2986cc}什%{F#000000} $ip_target"
else
	echo "%{F#2986cc}ﲅ %{u-}%{F#000000} No target"
fi

