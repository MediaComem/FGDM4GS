# RoadTrafficCensus_V1_1

## Description of the tasks

In order to define the model's views, we need to define the attributes to be used in the model. To do this, we analyse the various possible sources:

1. the `GetFeatureInfo` operation of the associated [WMS service]()
2. the `GetStyles` operation of the associated [WMS service]()
3. the attributes obtained when converting the `.ili` file with the QGIS Model Baker plugin
4. the classes and attributes of the `.ili` model file

### 1. Service WMS (GetFeatureInfo)

The `GetFeatureInfo` operation of the following WMS [service](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.strassenverkehrszaehlung-uebergeordnet&QUERY_LAYERS=ch.astra.strassenverkehrszaehlung-uebergeordnet&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/plain&I=1&J=1) returned no results. This is due to the fact that the layer is not visible at the given scale. We then use the QGIS Network Logger plugin to obtain a [coherent URL](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&BBOX=734221.16963088850025088,5899459.9446651516482234,738866.65232414903584868,5904379.63063486199826002&CRS=EPSG:3857&WIDTH=1745&HEIGHT=1848&LAYERS=ch.astra.strassenverkehrszaehlung-uebergeordnet&FORMAT=image/png&QUERY_LAYERS=ch.astra.strassenverkehrszaehlung-uebergeordnet&INFO_FORMAT=text/plain&I=619&J=1180)

However, no results are returned. It is therefore a matter of agreeing the attributes to be exposed for this model with ASTRA reprensatives, or simply not to consider it.

### 2. Service WMS (GetStyles)

The `GetSyles` operation of the [following](https://wms.geo.admin.ch/?REQUEST=GetStyles&LAYERS=ch.astra.baulinien-nationalstrassen&SERVICE=WMS&VERSION=1.3.0) WMS service allows to retrieve the following styles:

- [WMSGetStyles-FR.SLD]()
- [WMSGetStyles-DE.SLD]()

Apart from the names (`<se:Name>`) of the rules (`<se:Rule>`), which differ depending on the language, the two files are identical.

We then use the following linux command:

```bash
grep '<ogc:PropertyName>' WMSGetStyles-DE.SLD | sed 's/.*<ogc:PropertyName>\(.*\)<\/ogc:PropertyName>.*/\1/'
```
to list the attributes present in the file. This gives us the following list:

- de_networktype
- dtv
- de_classification

### 3. Plugin QGIS Model Baker

The QGIS Model Baker plugin can be used to convert an `.ili` file into a `.gpkg` file containing model data. Using the following gdal commands:
- `ogrinfo <filename> -so`: to obtain the list of layers contained in the file for which we select only the one containing geometry
- `ogrinfo -geom=no -so <filename> <layername>`: to obtain the list of layer attributes
This results in the following list:

| attribute name  | Data Type | Nullable | Length |
|-----------------|-----------|----------|--------|
| T_Id            | Integer64 | NO       | 0      |
| T_basket        | Integer64 | NO       | 0      |
| T_Ili_Tid       | String    | NO       | 36     |
| mlocid          | String    | NO       | 50     |
| mlocowner       | String    | NO       | 255    |
| mlocnr          | String    | NO       | 20     |
| mlocname        | String    | YES      | 100    |
| canton          | String    | NO       | 255    |
| municipality    | Integer64 | NO       | 0      |
| targetlocation1 | String    | NO       | 100    |
| targetlocation2 | String    | YES      | 100    |
| numberoflanes1  | Integer64 | NO       | 0      |
| numberoflanes2  | Integer64 | NO       | 0      |
| streetdesignation | String  | YES      | 100    |
| mlocstatus      | Integer64 | NO       | 0      |
| startupdate     | Date      | YES      | 0      |
| ssvznr          | String    | YES      | 10     |
| networktype     | Integer64 | NO       | 0      |

### 4. [Model name] `.ili` model

The [filename] file contains the following classes:

### 4. Conclusions

- L'opération `GetFeatureInfo` du `WMS` lié ne renvoie aucun résultat. Il ya donc lieu de convenir des attributs à exposer pour ce modèle avec des acteurs du domaine ou alors de ne pas le considérer.