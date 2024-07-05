#!/bin/bash

## trim x seconds from the end of a video, apply haldclut color grading, and output 'out.mkv'
##
## example:
## trimgrade.sh DSC_0425.MOV 4 ./lut/fuji_provia_100.png

inputDur=`ffprobe -v error -select_streams v:0 -show_entries stream=duration -of default=noprint_wrappers=1:nokey=1 "$1"`
outputDur=`bc <<< $inputDur-$2`
ffmpeg -i $1 -map 0 -t $outputDur -vf "movie=$3, [in] haldclut" out.mkv
