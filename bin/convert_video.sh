#!/bin/bash

function do_convert
{
infile=$1
outfile=$2
echo " "
echo "== convert $infile to $outfile"

ffmpeg -i $infile \
-vcodec libx264 -r 25 -s 1280x720 -vpre fast \
-acodec aac -ab 96k -ac 2 -strict experimental \
-b 4000k -minrate 4000k -maxrate 4000k -bufsize 1835 \
$outfile

echo "DONE"
}

do_convert 00130.MTS 03.mp4
do_convert 00131.MTS 04.mp4
do_convert 00132.MTS 05.mp4
do_convert 00133.MTS 06.mp4
do_convert 00134.MTS 07.mp4
do_convert 00135.MTS 08.mp4
do_convert 00136.MTS 09.mp4
do_convert 00137.MTS 10.mp4
do_convert 00138.MTS 11.mp4
do_convert 00139.MTS 12.mp4
do_convert 00140.MTS 13.mp4
do_convert 00141.MTS 14.mp4
do_convert 00142.MTS 15.mp4
do_convert 00143.MTS 16.mp4
do_convert 00144.MTS 17.mp4
do_convert 00145.MTS 18.mp4
do_convert 00146.MTS 19.mp4
do_convert 00147.MTS 20.mp4
do_convert 00148.MTS 21.mp4
do_convert 00149.MTS 22.mp4
