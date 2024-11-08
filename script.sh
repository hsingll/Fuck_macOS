#!/bin/sh

for file in .DS_Store .VolumeIcon.icns
  do
    if [ -f "/mnt/SDCARD/$file" ];then
      rm -f "/mnt/SDCARD/$file"
      echo "$file deleted"
    fi
  done

for folder in .fseventsd .Spotlight-V100 .Trashes .TemporaryItems
  do
    if [ -d "/mnt/SDCARD/$folder" ];then
      rm -rf "/mnt/SDCARD/$folder"
      echo "$folder deleted"
    fi
  done

find /mnt/SDCARD -name "._*" -size 4k -type f -delete
echo "._* files deleted"

sleep 500ms
