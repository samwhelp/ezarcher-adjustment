#!/usr/bin/env bash


##
## * https://imagemagick.org/script/convert.php
## * https://imagemagick.org/script/command-line-options.php#quality
## * https://linuxhint.com/imagemagick-reducing-file-sizes/
##

mkdir -p out

convert slide1.png -resize '50%x50%' out/slide1.png

#convert slide1.png -quality 25 out/slide1.png
