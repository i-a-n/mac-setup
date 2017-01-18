# See README for instructions on how to install this

# The path where screenshots to save
SS_PATH="/Users/moersen/Desktop/21-day-bin"

# Current UNIX timestamp (for screenshot file name)
NOW=$(date +%s)

# Image format to create, default is PNG (other options include PDF, JPG, TIFF, etc.)
SS_TYPE=png

# Name of the file (we're using the UNIX timestamp)
SS_NAME=screenshot$NOW

# Full path of screenshot file
SS_1X=$SS_PATH/$SS_NAME-1X.$SS_TYPE
SS_2X=$SS_PATH/$SS_NAME-2X.$SS_TYPE

# Execute screen capture command and save to $SS_2X
screencapture -i -r -t $SS_TYPE $SS_2X

# Check if the screenshot file exists
if [ -f $SS_2X ]; then

	# Get the 50% width of screenshot using `sips`
	WIDTH=$(($(sips -g pixelWidth $SS_2X | cut -s -d ':' -f 2 | cut -c 2-)/2))

	# Scale down & save
	sips --resampleWidth $WIDTH $SS_2X --out $SS_1X

	# Copy small one to clipboard using `osascript`
	# (and if you hold control key when doing the capture, it causes screen SS_2X to go to clipboard instead)
	osascript -e 'set the clipboard to POSIX file "'$SS_1X'"'
fi
