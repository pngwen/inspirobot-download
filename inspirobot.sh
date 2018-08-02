#!/bin/bash
#   Download a rotating collection of inspirbot images
#   Copyright (C) 2018 Robert Lowe <pngwen@acm.org>
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.

MAX=10

function inspiration {
    wget -q -O - $oldest https://inspirobot.me/api?generate=true
}

#if we already have max images, just replace the oldest
if [ -f inspirobot-download-$MAX.jpg ]; then
    oldest=`ls -t inspirobot-download-*.jpg 2> /dev/null| tail -1`
    wget -q -O $oldest `inspiration`
    exit
else
    #download MAX images
    for i in `seq $MAX`
    do
        url=`wget -q -O - $oldest https://inspirobot.me/api?generate=true`
        wget -q -O inspirobot-download-$i.jpg `inspiration`
	sleep 5
    done
fi
