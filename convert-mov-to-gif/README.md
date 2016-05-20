# Converting .mov to .gif
When I take a screencapture, I ususally like it ending up in .gif form. Applying this script to a folder-action will take the most recent .mov file and convert it to gif when it's dropped in there.

## Setup Steps

#### Necessary libraries
- Install `ffmpeg` and `gifsicle`. The easiest way is through [Homebrew](http://brew.sh). Just run `brew install ffmpeg` and `brew install gifsicle`.

#### Create the folder action
- Launch Automater, add a new Folder Action
- Select the target folder from the top
- Drag _run a shell script_ to the right pane
- Paste the shell script included in this repository, updating variables as necessary
- `cmd+S` to save as something logical

### Make and convert screen capture
- Open QuickTime Player
- File > New Screen Recording
- Record your screen grab, then save it to your target folder
- Wait a minute. (Sometimes it takes a while to convert)
