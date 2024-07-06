#!/bin/bash

## trim x seconds from the end of a video, apply haldclut color grading, and output user specified filename/format copying exif data from source file
##
## example:
## trimgrade.sh DSC_0425.MOV 4 ./lut/fuji_provia_100.png out.mkv

inputDur=`ffprobe -v error -select_streams v:0 -show_entries stream=duration -of default=noprint_wrappers=1:nokey=1 "$1"`
outputDur=`bc <<< "$inputDur"-"$2"`

ffmpeg -hwaccel auto -y -i "$1" -movflags use_metadata_tags -map 0 -t "$outputDur" -vf "movie=$3, [in] haldclut" "$4"

exiftool -tagsFromFile "$1" "$4"
rm -vf "$1"_original
