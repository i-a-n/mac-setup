DIR_PATH='/Users/moersen/Desktop/21-day-bin/'
MOV_PATH=`ls -t $DIR_PATH*.mov | head -n 1`

/usr/local/bin/ffmpeg -i "$MOV_PATH" -pix_fmt rgb24 -r 30 -f gif - | /usr/local/bin/gifsicle --resize-fit 800x800 > "$MOV_PATH.gif"
