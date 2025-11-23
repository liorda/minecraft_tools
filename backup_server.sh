#!/bin/env bash
ROOT=/mnt/minecraft_data_20gb
pushd $ROOT/minecraft
FILENAME=$(date +%Y%m%d).zip
echo Filename is $FILENAME
zip -r /tmp/$FILENAME world
pushd $ROOT/minecraft_tools/upload/service_account
python3 $ROOT/minecraft_tools/upload/service_account/upload.py /tmp/$FILENAME
popd
mv /tmp/$FILENAME $ROOT/minecraft_tools/backups/
echo "Existing backups:"
ls $ROOT/minecraft_tools/backups/
popd
