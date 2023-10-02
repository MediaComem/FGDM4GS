# URL of the zip file
ZIP_URL="https://www.bafu.admin.ch/dam/bafu/fr/dokumente/wasser/geodatenmodell/Gewaesserraum_ID190.zip.download.zip/Gewaesserraum_ID190.zip"

# Download the zip file and save it as temp.zip
curl -o temp.zip $ZIP_URL

# List the contents of the zip file and search for any .xlsx or .xls file
EXCEL_FILES=$(unzip -l temp.zip | awk '/\.xlsx$|\.xls$/{print $NF}' ORS=";")
if [ -n "$EXCEL_FILES" ]; then
  echo "The zip file contains the following Excel files: $EXCEL_FILES"
else
  echo "The zip file does not contain any Excel file."
fi

# Remove the temp.zip file
rm temp.zip

