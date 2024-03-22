# -*- coding: utf-8 -*-
"""
csw2wms.py
Script to convert CSW URLs to WMS and/or WFS URLs 
Author: [Maxime Collombin]
Date: [14/02/2023]
"""
from owslib.csw import CatalogueServiceWeb
from xml.etree import ElementTree as ET
from urllib.parse import urlparse, parse_qs, urlunparse, urlencode

def find_and_print(element, path):
    found_element = element.find(path, ns)
    return found_element

csw = CatalogueServiceWeb('https://www.geocat.ch/geonetwork/srv/fre/csw')
csw.getrecordbyid(id=['4a571da5-c3af-47fe-99a1-f33fc29d1cd9'], esn='full', outputschema='http://www.geocat.ch/2008/che', format='application/xml')

root = ET.fromstring(csw.response)
ns = {'gmd': 'http://www.isotc211.org/2005/gmd', 'gco': 'http://www.isotc211.org/2005/gco', 'xsi': 'http://www.w3.org/2001/XMLSchema-instance', 'che': 'http://www.someurl.org'}

identification_info = find_and_print(root, ".//gmd:identificationInfo")
identifier = find_and_print(identification_info, ".//gmd:identifier")
code = find_and_print(identifier, ".//gmd:code/gco:CharacterString")

distribution_info = find_and_print(root, ".//gmd:distributionInfo")
urls = distribution_info.findall(".//gmd:URL", ns)

if urls:
    for url in urls:
        if 'WMS' in url.text or 'WFS' in url.text:
            # Parse the URL and its parameters
            parsed_url = urlparse(url.text)
            params = parse_qs(parsed_url.query)

            # Remove the language parameter
            params.pop('lang', None)

            # Replace 'GetCapabilities' with 'GetStyles'
            params['REQUEST'] = ['GetStyles']

            # Add 'LAYERS' parameter
            if code is not None and code.text is not None:
                params['LAYERS'] = [code.text]

            # Reconstruct the URL
            new_query = urlencode(params, doseq=True)
            getstyles_url = urlunparse(parsed_url._replace(query=new_query))

            print("GetStyles URL:", getstyles_url)

            # Replace 'GetStyles' with 'GetFeatureInfo' and add required parameters
            params['REQUEST'] = ['GetFeatureInfo']
            params['QUERY_LAYERS'] = [code.text]
            params['CRS'] = ['EPSG:2056']
            params['BBOX'] = ['2531423.89,1155079.22,2532223.89,1155679.22']
            params['FEATURE_COUNT'] = ['1']
            params['HEIGHT'] = ['2']
            params['WIDTH'] = ['2']
            params['INFO_FORMAT'] = ['text/plain']
            params['I'] = ['1']
            params['J'] = ['1']

            # Reconstruct the URL
            new_query = urlencode(params, doseq=True)
            getfeatureinfo_url = urlunparse(parsed_url._replace(query=new_query))

            print("GetFeatureInfo URL:", getfeatureinfo_url)