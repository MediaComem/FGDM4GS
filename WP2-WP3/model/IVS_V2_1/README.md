# IVS_V2_1

## Description of the tasks

In order to define the model's views, we need to define the attributes to be used in the model. To do this, we analyse the various possible sources:

1. the `GetFeatureInfo` operation of the associated [WMS service]()
2. the `GetStyles` operation of the associated [WMS service]()
3. the attributes obtained when converting the `.ili` file with the QGIS Model Baker plugin
4. the classes and attributes of the `.ili` model file

### 1. Service WMS (GetFeatureInfo)

The `GetFeatureInfo` operation of the following WMS [service](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.ivs-nat&QUERY_LAYERS=ch.astra.ivs-nat&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/xml&I=1&J=1) allows to obtain the following attribute aliases (however, without the datatypes) in French (by adding the following string to the URL: `&lang=fr`):

| alias name     |
|----------------|
| Objet_IVS      |
| Substance      |
| Canton         |
| Histoire       |
| Terrain        |
| Importance_LPN |
| Documentation  |
| Tracé          |
| Documentation  |

as well as the following result in German (by keeping the URL as it is):

| alias name          |
|---------------------|
| IVS-Objekt          |
| Substanzgrad        |
| Kanton              |
| Geschichte          |
| Gelände             |
| Bedeutung_nach_NHG  |
| Streckenbeschrieb   |
| Strecke             |
| Streckenbeschrieb   |

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

- ivs_signatur

However, it turns out that the `` attribute is not consistent with the attributes of the `.ili` model.
This needs to be taken into account when carrying out the WP3 tasks.

### 3. Plugin QGIS Model Baker

The following layers in the `.gpkg` file contain a geometry column:

- 1: ivs_linienobjekte_lv03 (Line String)
- 2: ivs_linienobjekte_lv95 (Line String)
- 3: ivs_punktobjekte_lv03 (Point)
- 4: ivs_punktobjekte_lv95 (Point)

Since the geometry obtained with the `GetFeatureInfo` operation is of type `LineString`, we can assume that the `ivs_linienobjekte_lv95` layer is the one corresponding to the road axis. This gives us the following attributes:

| attribute name       | Data Type | Nullable | Length |
|----------------------|-----------|----------|--------|
| T_Id                 | Integer64 | NO       | 0      |
| T_basket             | Integer64 | NO       | 0      |
| T_Ili_Tid            | String    | YES      | 200    |
| ivs_geometrie        | Geometry  | NO       | 0      |
| role_ivs_objekte     | Integer64 | NO       | 0      |
| role_ivs_signatur    | Integer64 | NO       | 0      |

### 4. [Model name] `.ili` model

The [filename] file contains the following classes:

### 4. Conclusions
