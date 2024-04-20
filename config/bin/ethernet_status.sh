#!/bin/sh

echo "%{F#2986cc} %{F#000000}$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}"
