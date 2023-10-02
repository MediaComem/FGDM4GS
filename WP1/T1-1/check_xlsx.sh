#!/bin/bash

# URL of the zip file
ZIP_URL="https://www.bafu.admin.ch/dam/bafu/fr/dokumente/stoerfallvorsorge/geodatenmodell/ERKAS-Betriebe_V2_0.zip.download.zip/ERKAS-Betriebe_V2_0.zip"

# Download the zip file and save it as temp.zip
curl -o temp.zip $ZIP_URL

# List the contents of the zip file and search for any .xlsx or .xls file
if unzip -l temp.zip | grep -qE '\.xlsx$|\.xls$'; then
  echo "The zip file contains at least one Excel file."
else
  echo "The zip file does not contain any Excel file."
fi

# Remove the temp.zip file
rm temp.zip
