# 21-day-bin Purge
Let's set up a script to automatically delete anything older than 21 days in a specific folder. This is helpful for keeping folders tidy that hold things like screenshots, that are basically useless clutter after a few weeks.

## Setup

#### Create the script
- Create the folder you want purged automatically
- Open Automater, create a new Folder Action
- Select the folder at the top you want to purge (_Folder Action receives files and folders added to..._)
- Drag _Run Shell Script_ from the left panel to the right
- Paste the script from this repository
- `cmd+S` to save it

### Attach it
- Go to the folder you want to purge, and right click > Folder Actions Setup
- Enable them, add a Workflow into the right panel (if it's not already there)
- Select your new Workflow and close
