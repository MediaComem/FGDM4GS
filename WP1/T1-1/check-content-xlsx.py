# -*- coding: utf-8 -*-
"""
checkzipurlcontent.py
Script to check the content of a zip file from a URL. 
Author: [Maxime Collombin]
Date: [14/02/2023]
"""

import requests
import zipfile
import io

# URL of the zip file
ZIP_URL = "https://example.com/your-zip-file"

# Download the zip file
response = requests.get(ZIP_URL)

# Open the zip file in memory
zip_file = zipfile.ZipFile(io.BytesIO(response.content))

# List the contents of the zip file and search for any .xlsx or .xls file
excel_files = [name for name in zip_file.namelist() if name.endswith(('.xlsx', '.xls'))]

if excel_files:
    print("The zip file contains at least one Excel file.")
else:
    print("The zip file does not contain any Excel file.")