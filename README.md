# TTC-ESO-Updater
Its just a simple script for someone who don't want to use/or can't use TTC-Gui for updating price.

# Requirment:<br>
  Installed wget: 
    For mac - `brew install wget` <br>
    For windows - `https://eternallybored.org/misc/wget/` <br>
    For Ubuntu/Debian - `apt-get install wget`

# Installation and usage:
  1. Clone repo - `git@github.com:Ailadir/TTC-ESO-Updater.git` or `https://github.com/Ailadir/TTC-ESO-Updater.git`
  2. Go to downloaded repo
  3. Use any editor to open updateTTC.sh
  4. Change #!bin/zsh on #!bin/bash if you are using bash
  5. Change REGION to "eu" / "us"
  6. Change TTC - its path to your TTC-addon
  7. Change ZIP - its where downloaded file with updated prices will be saved
  8. Write ./updateTTC.sh in terminal
<details>
  <summary>If you dont want to download repo - create SH of your own and add that code there: </summary>
  
```#!/bin/zsh

REGION="eu"
TTC="/Users/ailadir/Documents/Elder Scrolls Online/live/AddOns/TamrielTradeCentre" #path to TTC location in your addon dir
ZIP="/Users/ailadir/Downloads/PriceTable.zip" #path to place where all downloads file going

wget -O "$ZIP" "https://$REGION.tamrieltradecentre.com/download/PriceTable" || exit 1
unzip -o "$ZIP" -d "$TTC" || exit 1

rm "$ZIP" #Part of script to delete old ZIP file
```

  
</details>
