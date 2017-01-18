#🖇 Copy Filename as Repo URL
This lets you right-click on an image file in finder, and automatically copy it to your clipboard as `https://[path to my personal repo]/[filename]`.

This is useful to me because I upload all my files to my personal repo, and have a copy of them locally also. So I can go through Finder, find an image, and then simply copy its public-facing URL to share places as text.

## Instructions
#### Create service
- Open Automator
- Select “Service” for the template of the new workflow
- In the top of the right pane, select _Service receives selected *image files* in *Finder*_
- Make sure _Input is *entire selection*_
- Drag action _Run Shell Script_ from the left pane into the workflow on the right pane
- Leave Shell at its default `/bin/bash`, and replace the script with the one in this respository
- `cmd+S` to save, name it something like _Copy Filename as Repo URL_

That’s it! Now right-clicking on an image with the path name `/path/to/my/file0001.jpg` will let you copy it to your clipboad as `https://union.io/images/repo/file0001.jpg`.
