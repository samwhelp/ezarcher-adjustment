#!/usr/bin/env bash


##
## * https://imagemagick.org/script/convert.php
## * https://imagemagick.org/script/command-line-options.php#quality
## * https://linuxhint.com/imagemagick-reducing-file-sizes/
##

mkdir -p out

convert lava-lamp.png -quality 25 out/lava-lamp.png
