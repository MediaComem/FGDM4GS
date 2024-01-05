# T1-1 : Choice of data models to be used

## Description of the performed tasks

- Creation of a python [script](https://github.com/MediaComem/FGDM4GS/blob/main/WP1/T1-1/geobasisdaten_api.py) to extract data from the [geobasisdaten.ch](https://geobasisdaten.ch/api/v1/redoc/) API to an excel file (to keep only the necessary columns).
- Removal of entries that do not have an `.ili` data model 
- Manual search of the relevant websites for links to the representation models (pdf, zip & excel)
- Use of linux script: ["check_xlsx.sh"](https://github.com/MediaComem/FGDM4GS/blob/main/WP1/T1-1/check_xlsx.sh) to test whether zips contain excel files
- Deletion of model entries that do not have excel files for representation models. We assume that these excel files represent the standardised description format and ignore the others.
- Use of the linux script ["getfilename.sh"](https://github.com/MediaComem/FGDM4GS/blob/main/WP1/T1-1/getfilename.sh) to print the names of excel files (for zip files containing several files, the names of these files are concatenated into a string of characters transcribed into an excel cell).
- Use of excel functions (`=A2=A1`; `=AND(A1=TRUE,B1=TRUE)`) to determine which models (data and representation) are listed several times, then aggregation of the related information and deletion of redundant entries.
- In order to select the models to be used, we have defined the following selection criteria:
      - entries in [geobasisdaten.ch](https://geobasisdaten.ch/) that have a link to a data model (`.ili` file)
      - entries from geosbasisdaten.ch that have a link to a `.xlsx` representation model in Excel format (because these files are the closest to what could be considered standardised resources and the representation models are linked to the definition of views)
      - geosbasisdaten.ch entries with a link to a geoservice or a usable data file
      - finally, the models are selected on the basis of their complexity
- _NOTE :_
    - The catalog of [geobasisdaten.ch](https://geobasisdaten.ch/) contains **346** entries (02.10.2023)
    - **278/346** entries contain a link to a datamodel (`.ili` file)
    - Why don't all the entries contain a link to a data model?
    - **30/278** data models contain representation information
    - Of these **30** models, **11** contain representation models in excel format.
    - Of these **11** models **8** contain a link to a geoservice or a usable data file
    - With regard to [geobasisdaten.ch](https://geobasisdaten.ch/), it might be appropriate to add a link to the representation models (for those that exist) in the API.
    - For data models for which services exist on map.geo.admin.ch, it could be relevant to add a link to these services in the API.
    - In the same way as in the definition of these services, the representation models used should be specified by including a link to the model or to the API endpoint.
## Results

These steps allow to select the following models:

| autorité | titre | id | Modèle minimal | Webpage | Représentation | Format | GetLegendGraphic | GetStyle | Complexité |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| ARE | Inventaire des logements et proportion de résidences secondaires | 202.1 | [Lien](https://models.geo.admin.ch/ARE/HousingInventory_V1.ili) | [Lien](https://www.are.admin.ch/are/fr/home/developpement-et-amenagement-du-territoire/bases-et-donnees/modeles-de-geodonnees-minimaux/wohnungsinventar.html) | [Lien](https://www.are.admin.ch/dam/are/fr/dokumente/raumplanung/rep_catalogue_mgdm_id_202_v1.xlsx.download.xlsx/RepresentationCatalogue-MGDM-ID-202-V1.xlsx) | xlsx | [Lien](https://wms.geo.admin.ch/?VERSION=1.3.0&SERVICE=WMS&REQUEST=GetLegendGraphic&SLD_VERSION=1.1.0&LAYER=ch.are.wohnungsinventar-zweitwohnungsanteil&FORMAT=image/png&STYLE=default&LANG=fr) | [Lien](https://wms.geo.admin.ch/?REQUEST=GetStyles&LAYERS=ch.are.wohnungsinventar-zweitwohnungsanteil&SERVICE=WMS&VERSION=1.3.0) |-|
| ASTRA | Alignement des routes nationales | 88.1 | [Lien](https://models.geo.admin.ch/ASTRA/BuildingLinesForMotorways_V2_2.ili) | [Lien](https://www.astra.admin.ch/astra/fr/home/services/weitere-bereiche/geoinformation/geodonnees-de-base/cadastre-rdppf.html) | [Lien](https://www.astra.admin.ch/dam/astra/fr/dokumente/Geoinformation/088_MGDM_Baulinien_Nationalstrassen_Darstellungskatalog.xlsx.download.xlsx/088_MGDM_Baulinien_Nationalstrassen_Darstellungskatalog_V2_1.xlsx) | xlsx | [Lien](https://wms.geo.admin.ch/?VERSION=1.3.0&SERVICE=WMS&REQUEST=GetLegendGraphic&SLD_VERSION=1.1.0&LAYER=ch.astra.baulinien-nationalstrassen&FORMAT=image/png&STYLE=default&LANG=fr) | [Lien](https://wms.geo.admin.ch/?REQUEST=GetStyles&LAYERS=ch.astra.baulinien-nationalstrassen&SERVICE=WMS&VERSION=1.3.0) |-|
| ASTRA | Comptage de la circulation routière - réseau principal | 13.1;14.1 | [Lien](https://models.geo.admin.ch/ASTRA/RoadTrafficCensus_V1_1.ili) | [Lien](https://www.astra.admin.ch/astra/fr/home/services/weitere-bereiche/geoinformation/geodonnees-de-base/comptage-de-la-circulation-routiere.html) | [Lien](https://www.astra.admin.ch/dam/astra/fr/dokumente/Geoinformation/datenkatalog_strassenverkehrszaehlung.xlsx.download.xlsx/013_014_MGDM_Strassenverkehrszaehlung_Darstellungskatalog_V1.xlsx) | xlsx | [Lien](https://wms.geo.admin.ch/?VERSION=1.3.0&SERVICE=WMS&REQUEST=GetLegendGraphic&SLD_VERSION=1.1.0&LAYER=ch.astra.strassenverkehrszaehlung-uebergeordnet&FORMAT=image/png&STYLE=default&LANG=fr) | [Lien](https://wms.geo.admin.ch/?REQUEST=GetStyles&LAYERS=ch.astra.strassenverkehrszaehlung-uebergeordnet&SERVICE=WMS&VERSION=1.3.0) |-|
| ASTRA | Inventaire fédéral des voies de communication historiques | 16.1;17.1 | [Lien](https://models.geo.admin.ch/ASTRA/IVS_V2_1.ili) | [Lien](https://www.astra.admin.ch/astra/fr/home/services/weitere-bereiche/geoinformation/geodonnees-de-base/voies-de-communication-historiques.html) | [Lien](https://www.astra.admin.ch/dam/astra/fr/dokumente/Geoinformation/darstellungskatalog_historische-verkehrswege.xlsx.download.xlsx/MGDM_Historische_Verkehrswege_Darstellungskatalog_V2_1.xlsx) | xlsx | [Lien](https://wms.geo.admin.ch/?VERSION=1.3.0&SERVICE=WMS&REQUEST=GetLegendGraphic&SLD_VERSION=1.1.0&LAYER=ch.astra.ivs-nat&FORMAT=image/png&STYLE=default&LANG=fr) | [Lien](https://wms.geo.admin.ch/?REQUEST=GetStyles&LAYERS=ch.astra.ivs-nat&SERVICE=WMS&VERSION=1.3.0) |+|
| ASTRA | Plan sectoriel des transports Partie infrastructure route | 72.1 | [Lien](https://models.geo.admin.ch/ASTRA/SectoralPlanForRoadInfrastructure_V1_4.ili) | [Lien](https://www.astra.admin.ch/astra/fr/home/services/weitere-bereiche/geoinformation/geodonnees-de-base/plan-sectoriel-des-transports--partie-infrastructure-routiere.html) | [Lien](https://www.astra.admin.ch/dam/astra/fr/dokumente/Geoinformation/Darstellungskatalog_Sachplan_Verkehr-Teil_Infrastruktur_Strasse.xlsx.download.xlsx/072_MGDM_SIN_Darstellungskatalog_V1_4.xlsx) | xlsx | [Lien](https://wms.geo.admin.ch/?VERSION=1.3.0&SERVICE=WMS&REQUEST=GetLegendGraphic&SLD_VERSION=1.1.0&LAYER=ch.astra.sachplan-infrastruktur-strasse_kraft&FORMAT=image/png&STYLE=default&LANG=fr) | [Lien](https://wms.geo.admin.ch/?REQUEST=GetStyles&LAYERS=ch.astra.sachplan-infrastruktur-strasse_kraft&SERVICE=WMS&VERSION=1.3.0) |+|
| ASTRA | Réseau des routes principales | 90.1 | [Lien](https://models.geo.admin.ch/ASTRA/MainRoads_V1_1.ili) | [Lien](https://www.astra.admin.ch/astra/fr/home/services/weitere-bereiche/geoinformation/geodonnees-de-base/reseau-des-routes-principales.html) | [Lien](https://www.astra.admin.ch/dam/astra/fr/dokumente/Geoinformation/darstellungskatalog_hautpstrassennetz.xlsx.download.xlsx/090_MGDM_Hauptstrassennetz_Darstellungskatalog_V1_1.xlsx) | xlsx | [Lien](https://wms.geo.admin.ch/?VERSION=1.3.0&SERVICE=WMS&REQUEST=GetLegendGraphic&SLD_VERSION=1.1.0&LAYER=ch.astra.hauptstrassennetz&FORMAT=image/png&STYLE=default&LANG=fr) | [Lien](https://wms.geo.admin.ch/?REQUEST=GetStyles&LAYERS=ch.astra.hauptstrassennetz&SERVICE=WMS&VERSION=1.3.0) |-|
| ASTRA | Routes nationales | 86.1 | [Lien](http://models.geo.admin.ch/ASTRA/Axis_V1_1.ili) | [Lien](https://www.astra.admin.ch/astra/fr/home/services/weitere-bereiche/geoinformation/geodonnees-de-base/reseau-des-routes-nationales.html) | [Lien](https://www.astra.admin.ch/dam/astra/fr/dokumente/Geoinformation/darstellungskatalog-nationalstrassennetz.xlsx.download.xlsx/Catalogue%20de%20pr%C3%A9sentation%20-%20R%C3%A9seau%20des%20routes%20nationales%20.xlsx) | xlsx | [Lien](https://wms.geo.admin.ch/?VERSION=1.3.0&SERVICE=WMS&REQUEST=GetLegendGraphic&SLD_VERSION=1.1.0&LAYER=ch.astra.nationalstrassenachsen&FORMAT=image/png&STYLE=default&LANG=fr) | [Lien](https://wms.geo.admin.ch/?REQUEST=GetStyles&LAYERS=ch.astra.nationalstrassenachsen&SERVICE=WMS&VERSION=1.3.0) |+|
| ARE | Zones réservées | 76.1 | [Lien](https://models.geo.admin.ch/ARE/Zones_reservees_V1_1.ili) | [Lien](https://www.are.admin.ch/are/fr/home/developpement-et-amenagement-du-territoire/bases-et-donnees/modeles-de-geodonnees-minimaux/Planungszonen.html) | [Lien](https://www.are.admin.ch/dam/are/fr/dokumente/grundlagen/dokumente/darstellungskatalog_mgdm_id_76_v1_1.xlsx.download.xlsx/CatalogueDeRepresentation-MGDM-ID-76-V1_1.xlsx) | xlsx | [Lien](https://geodienste.ch/db/planungszonen_v1_0_0/fra?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetLegendGraphic&SLD_VERSION=1.1.0&LAYER=planungszone&FORMAT=image/png&STYLE=default&LANG=fr) | [Lien](https://geodienste.ch/db/planungszonen_v1_0_0/fra?LAYERS=planungszone&REQUEST=GetStyles&SERVICE=WMS&VERSION=1.3.0) |+|

<!-- In addition to these results, we have also identified the following model that could be used in this project:

- [Hazard_Mapping_V1_3.ili](https://models.geo.admin.ch/BAFU/Hazard_Mapping_V1_3.ili) -->

## Geocat

Geocat also allows to retrieve informations about MGDM.

One can for instance filter the records corresponding to `models` via the following [url](https://www.geocat.ch/geonetwork/srv/eng/catalog.search#/search?query_string=%7B%22resourceType%22:%20%7B%22model%22:%20true%7D%7D). However, this does not provide links to related geoservices and representation models.

Another possibility is to send a request to the CSW service:

```
https://www.geocat.ch/geonetwork/srv/fre/csw?
service=CSW
&version=2.0.2
&request=GetRecords
&constraintLanguage=CQL_TEXT&constraint=dc:type = 'model'
&constraint_language_version=1.1.0&typeNames=csw:Record&resultType=results
&ElementSetName=full&maxRecords=3&lang=fr
```

but not the all the records correspond to MGDM and the filter on the dct:abstract LIKE 'Modèle de géodonnées minimal%' doesn't seem to work.

By using the id of the records obtained with the GetRecordById operation and the http://www.opengis.net/cat/csw/2.0.2 schema, it is then possible to obtain the extended information linked to the record:

```
https://www.geocat.ch/geonetwork/srv/fre/csw?
service=CSW
&version=2.0.2
&request=GetRecordById
&id=f4aabaac-910e-45e9-8262-1f6f72920b99
&elementSetName=full
&outputSchema=http://www.opengis.net/cat/csw/2.0.2
```

However, it is not possible to obtain the URLs of other linked records containing links to geoservices.

A final possibility lies in the Geonetwork API. It is possible to use the following endpoint:

`https://www.geocat.ch/geonetwork/doc/api/index.html#/search/search`

and associate it with one of the following 2 JSON:

```json
{
  "_source": {
    "includes": [
      "uuid",
      "resourceTitleObject.langfre",
      "resourceAbstractObject.langfre"
    ]
  },  
    "from": 0,
    "size": 26,
    "query": {
      "bool": {
        "must": [
          {
            "query_string": {
              "query": "(any.langfre:(modèle de géodonnées minimal MGDM) OR any.common:(modèle de géodonnées minimal MGDM) OR resourceTitleObject.langfre:(modèle de géodonnées minimal MGDM)^2 OR resourceTitleObject.\\*:\"modèle de géodonnées minimal MGDM\"^6)AND (resourceType:\"service\")",
              "default_operator": "AND"
            }
          }
        ]
      }
    },
    "track_total_hits": true,
    "sort":{"_id":"asc"}
  }
```

```json
{
  "_source": {
    "includes": [
      "uuid",
      "resourceTitleObject.langfre",
      "resourceAbstractObject.langfre"
    ]
  },
  "from": 0,
  "size":1,
  "query": {
    "bool": {
      "must": [
        {
          "query_string": {
            "query": "(uuid:\"fce3b347-cc58-4b29-bb87-a35eed4487ea\")",
            "default_operator": "AND"
          }
        }
      ]
    }
  },
  "track_total_hits": true,
  "sort":{"_id":"asc"}
  }
```

but this doesn't allow the information to be linked either. 

__NOTE:__ It would probably be possible to obtain the linked information by updating the JSON content with certain parameters of this url, although this is not well understood at the moment:

https://www.geocat.ch/geonetwork/srv/api/search/records/_search?relatedType=children&relatedType=parent&relatedType=brothersAndSisters&relatedType=siblings&relatedType=associated&relatedType=services&relatedType=datasets&relatedType=fcats&relatedType=hasfeaturecats&relatedType=sources&relatedType=hassources&relatedType=related&relatedType=onlines&relatedType=thumbnails

## Conclusion

As will be explained later in the project documentation, in order to define the VIEWs and representation models in INTERLIS 2, it is necessary to cross-reference the information in the data models with the geoservices or associated data sets ("flat models") and the representation models (metadata, EXCEL or WMS GetStyle models), but neither Geocat nor geobasisdaten.ch currently allow this cross-referencing.