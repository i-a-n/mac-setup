# see README.md for how to install this

# the path where screenshots to save
SS_PATH="/Users/moersen/Desktop/21-day-bin"

# a variable of unix timestamp for screenshot file name
NOW=$(date +%s)

# image format to create, default is png (other options include pdf, jpg, tiff and other formats)
SS_TYPE=png

# name of screenshot
SS_NAME=screenshot$NOW

# full path of screenshot file
SS_1X=$SS_PATH/$SS_NAME-1X.$SS_TYPE
SS_2X=$SS_PATH/$SS_NAME-2X.$SS_TYPE

# execute screen capture command and save to $SS_2X
screencapture -i -r -t $SS_TYPE $SS_2X

# check if screenshot is existing
if [ -f $SS_2X ]; then

    # get the 50% width of screenshot by sips
    WIDTH=$(($(sips -g pixelWidth $SS_2X | cut -s -d ':' -f 2 | cut -c 2-)/2))

    # scale down by sips
    sips --resampleWidth $WIDTH $SS_2X --out $SS_1X
    
    # copy small one to clipboard by applescript
    # if you hold control key when do capture, causes screen shot 2X to go to clipboard
    osascript -e 'set the clipboard to POSIX file "'$SS_1X'"'
fi
