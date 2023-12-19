#!/bin/zsh 

REGION="eu" #change it on your region
TTC="/Users/ailadir/Documents/Elder Scrolls Online/live/AddOns/TamrielTradeCentre" #path to TTC location in your addon dir
ZIP="/Users/ailadir/Downloads/PriceTable.zip" #path to place where all downloads file going

wget -O "$ZIP" "https://$REGION.tamrieltradecentre.com/download/PriceTable" || exit 1
unzip -o "$ZIP" -d "$TTC" || exit 1

rm "$ZIP" #Part of script to delete old ZIP file
