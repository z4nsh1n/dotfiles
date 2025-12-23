#!/bin/sh
#


TEXT="$(zenity --entry --entry-text "Save session" --text="Save session")"

#echo "open -t https://www.dict.cc/?s=$QUTE_SELECTED_TEXT" >> "$QUTE_FIFO"
#echo "open -t https://www.dict.cc/?s=$TEXT" >> "$QUTE_FIFO"
echo "session-save -o $TEXT" >> "$QUTE_FIFO"

