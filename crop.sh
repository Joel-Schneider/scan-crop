#!/bin/sh
# (C) 23rd March 2019 Joel Schneider
# Crops all jpg files in current directory
# Takes "A4" images that have been scanned in at 1200dpi, and crops them to A4
# i.e. get rid of black margin on bottom and left
# Above info added 30th March 2019 to remind me in future

for image in *jpg; do
	echo -en "$image "
	#jpegtran -crop 9754x13960+325+0 $image > crop/$image
	jpegtran -crop 9749x13955+330+0 $image > crop/$image
	echo "> crop/$image"
done