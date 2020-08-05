#!/bin/bash

# This is a script that converts CSS that is specifically parsed with "sassc -M -t compact" into uBlock Origin UserStyles
# Do not try to run this script on any CSS files that aren't parsed with "sassc -M -t compact". (It won't do any harm, but the output can't be read by uBO.)
# uBlock Origin UserStyles do not support media queries and url().

# The file being converted in this script is https://github.com/lassekongo83/yt-classic-polymer/blob/master/src/css/yt-classic.css

IN_FILE="yt-classic.css"
OUT_FILE="yt.txt"
DOMAIN="youtube.com"

# First we convert the only "900px" media query we want to preserve
sed 's/@media (min-width: 900px) { html:not(.style-scope) { --ytd-grid-video-item_-_width: 196px/html:not(.style-scope):style(--ytd-grid-video-item_-_width: 196px/g' $IN_FILE > $OUT_FILE
# Then remove the media queries we're not interested in
sed -i -n -e '/@media.*1800/p' -e '/@media/!p' $OUT_FILE

# Find and replace
sed -i 's/@media (min-width: 1800px) { //g' $OUT_FILE
sed -i 's/; } }/;)/g' $OUT_FILE
sed -i 's/; }/;)/g' $OUT_FILE
sed -i 's/;}/;)/g' $OUT_FILE
sed -i 's/ { /:style(/g' $OUT_FILE
sed -i 's/:style(display: none !important;)//g' $OUT_FILE
# remove empty lines
sed -i '/^$/d' $OUT_FILE
# add the domain to every line
sed -i -e "s/^/$DOMAIN##/" $OUT_FILE
