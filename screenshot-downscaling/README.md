# 🗜 Screenshot Downscaling
This mimics the native Mac screenshot tool, but then saves a ½-resolution version, so you don’t end up with _huge_ retina-scale screenshots.

## Instructions
#### Create service
- Open Automator
- Select “Service” for the template of the new workflow
- In the top of the right pane, select _Service receives *no input* in any application_
- Drag action _Run Shell Script_ from the left pane into the workflow on the right pane
- Leave Shell at its default `/bin/bash`, and replace the script with the one in this repository
- `cmd+S` to save and name it something obvious

#### Attach to keyboard shortcut
- Open keyboard preferences, then shortcuts
- Select _Services_ in the left pane
- Scroll down to General in the right pane
- Double-click to the right of the Automator workflow you just created
- Press `shift+cmd+5`, to set the screenshotter shortcut

## Bonus
I set the path to save the screenshots as `~/Desktop/21-day-bin`. See the [21-day-bin](https://github.com/i-a-n/mac-setup/tree/master/21-day-bin) folder for instructions on how to automatically clean out the folder every 21 days.
