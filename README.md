# bin
handy doodads from my ~/bin\
i aim to make these plug-and-play but i cannot guarantee these will work on your system. For educational purposes only

## trimgrade.sh
trim x seconds from the end of a video, apply haldclut color grading, and output user specified filename/format copying exif data from source file

example:\
`trimgrade.sh DSC_0425.MOV 4 ./lut/fuji_provia_100.png`

## photorename.sh
rename, copy, or symlink photos/videos to unique, informative names based on image exif data

usage:\
`photorename [-h|--help] [-c|--copy] [-s|--symlink] [-d|--directory] [-r|--recursive] [-n|--dryrun] [-o|--output] [-f|--file] [-p|--preserve-tree]`
