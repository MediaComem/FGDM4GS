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
      - finally, the models are selected on the basis of the diversity of cartographic representations they offer (`Symbolizers` present in the models)
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