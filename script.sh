#!/usr/bin/env bash

source_folder=/Users/hz/Desktop/overlay

echo "GSJ-DIT processing..."
for file in $source_folder/*.png ; do

  if [[ -f $file ]]; then
    filename=$(filename -- "$file")
    echo "source png:"$file "new :"$target_folder/$filename
    /Users/hz/Downloads/ffmpeg -i /Users/hz/Desktop/overlay/test.mp4 -i "$file" -filter_complex overlay="(main_w/2)-(overlay_w/2):(main_h/2)-(overlay_h)/2" -c:a copy -b:v 15000k $(basename -- "$file" .png).mp4
  fi
done;
