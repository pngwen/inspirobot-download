# Inspirobot Download

This program is a simple shell script which downloads and maintains a
rotating cache of inspirobot images.  Out of the box it will download
10 images (with 5 seconds between each download) to the current
directory.  Subsequent runs will replace the oldest image matching
the pattern

   inspirobot-download-#.jpg
   
The number can be adjusted by setting the MAX variable in the script
file.

## Installing and Using

Just put the inspirobot.sh script wherever you like.  I use cron in
conjunction with wallch to keep a steady stream of inspiration on my
desktop.

You will need your basic UNIX utilites and wget to use this script.


## Acknowledgements

I would like to thank my wife, Erin, who's offhanded comment inspired
me to take the 15 minutes required to write this script.


