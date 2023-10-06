# MainRoads_V1_1

## Description of the tasks

In order to define the model's views, we need to define the attributes to be used in the model. To do this, we analyse the various possible sources:

1. the `GetFeatureInfo` operation of the associated [WMS service]()
2. the `GetStyles` operation of the associated [WMS service]()
3. the attributes obtained when converting the `.ili` file with the QGIS Model Baker plugin
4. the classes and attributes of the `.ili` model file

### 1. Service WMS (GetFeatureInfo)

The `GetFeatureInfo` operation of the following WMS [service](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.hauptstrassennetz&QUERY_LAYERS=ch.astra.hauptstrassennetz&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/plain&I=1&J=1) returned no results. This is due to the fact that the layer is not visible at the given scale. We then use the QGIS Network Logger plugin to obtain a [coherent URL](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&BBOX=748921.65984990540891886,5881551.54232843779027462,786085.5213959903921932,5920909.03008612617850304&CRS=EPSG:3857&WIDTH=1745&HEIGHT=1848&LAYERS=ch.astra.hauptstrassennetz&FORMAT=image/png&QUERY_LAYERS=ch.astra.hauptstrassennetz&INFO_FORMAT=text/plain&I=848&J=917) of the `GetFeatureInfo` request allowing to obtain the following result in French (by adding the following string to the URL: `&lang=fr`):

| alias name      |
|-----------------|
| Numéro_de_route |
| Désignation     |
| Canton          |

as well as the following result in German (by keeping the URL as it is):

| alias name      |
|-----------------|
| Strassennummer  |
| Bezeichnung     |
| Kanton          |

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

- roadnumber

### 3. Plugin QGIS Model Baker

The following layers in the `.gpkg` file contain a geometry column:

| attribute name       | Data Type | Nullable | Length |
|----------------------|-----------|----------|--------|
| T_Id                 | Integer64 | NO       | 0      |
| T_basket             | Integer64 | NO       | 0      |
| T_Ili_Tid            | String    | YES      | 200    |
| canton               | Integer64 | NO       | 0      |
| roadnumber           | String    | NO       | 32     |
| segmentdescription   | String    | NO       | 256    |

### 4. [Model name] `.ili` model

The [filename] file contains the following classes:

### 4. Conclusions
