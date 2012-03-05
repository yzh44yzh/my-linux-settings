#!/bin/bash

#MP4Box -add 04-1.mp4 -cat 04-2.mp4 -new 04.mp4

#mencoder 04-1.mp4 04-2.mp4 -ovc copy -oac copy -of lavf -o 04.mp4
mencoder 05-1.mp4 05-2.mp4 -ovc copy -oac copy -of lavf -o 05.mp4
  
#ffmpeg -i 04-1.mp4 -sameq part1.mpg
#ffmpeg -i 04-2.mp4 -sameq part2.mpg
#cat part1.mpg part2.mpg > 04.mpg
#ffmpeg -i 04.mpg -sameq 04.mp4
