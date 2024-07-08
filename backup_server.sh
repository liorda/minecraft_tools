#!/bin/env bash
pushd /home/user/minecraft
FILENAME=$(date +%Y%m%d).zip
echo Filename is $FILENAME
zip -r /tmp/$FILENAME world
pushd /home/user/minecraft_tools/upload/service_account
python3 /home/user/minecraft_tools/upload/service_account/upload.py /tmp/$FILENAME
popd
mv /tmp/$FILENAME /home/user/minecraft_tools/backups/
echo "Existing backups:"
ls /home/user/minecraft_tools/backups/
popd
