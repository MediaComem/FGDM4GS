# BuildingLinesForMotorways_V2_2

## Description of the tasks

In order to define the model's views, we need to define the attributes to be used in the model. To do this, we analyse the various possible sources:

1. the `GetFeatureInfo` operation of the associated [WMS service]()
2. the `GetStyles` operation of the associated [WMS service]()
3. the attributes obtained when converting the `.ili` file with the QGIS Model Baker plugin
4. the classes and attributes of the `.ili` model file

### 1. Service WMS (GetFeatureInfo)

The `GetFeatureInfo` operation of the following WMS [service](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.baulinien-nationalstrassen&QUERY_LAYERS=ch.astra.baulinien-nationalstrassen&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/plain&I=1&J=1&lang=fr)  allows to obtain the following attribute aliases (however, without the datatypes) returned no results. This is due to the fact that the layer is not visible at the given scale. We then use the QGIS Network Logger plugin to obtain a [coherent URL](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&BBOX=742727.87040956178680062%2C5902314.20806237682700157,742730.11491872929036617,5902316.50419355742633343&CRS=EPSG:3857&WIDTH=2&HEIGHT=2&LAYERS=ch.astra.baulinien-nationalstrassen&FORMAT=image/png&QUERY_LAYERS=ch.astra.baulinien-nationalstrassen&INFO_FORMAT=text/plain&I=0&J=1) of the `GetFeatureInfo` request allowing to obtain the following result in French (by adding the following string to the URL: `&lang=fr`):

| alias name                                         |
|----------------------------------------------------|
| Limite_verticale_vers_le_haut_altimétrie_en_mètres |
| Limite_verticale_vers_le_bas_altimétrie_en_mètres  |

as well as the following result in German (by keeping the URL as it is):

| alias name                                         |
|----------------------------------------------------|
| Vertikale_Begrenzung_nach_oben_Höhe_in_Meter       |
| Vertikale_Begrenzung_nach_unten_Höhe_in_Meter      |

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

- status

However, it turns out that the `` attribute is not consistent with the attributes of the `.ili` model.
This needs to be taken into account when carrying out the WP3 tasks.

### 3. Plugin QGIS Model Baker

The following layers in the `.gpkg` file contain a geometry column:

- 1: buildingline (Line String)
- 2: buildingrestrictionarea (Polygon)

Since the geometry obtained with the `GetFeatureInfo` operation is of type `Polygon`, we can assume that the `buildingrestrictionarea` layer is the one corresponding to the road axis. This gives us the following attributes:

| attribute name       | Data Type | Nullable | Length |
|--------------------  |-----------|----------|--------|
| T_Id                 | Integer64 | NO       |        |
| T_basket             | Integer64 | NO       |        |
| T_Ili_Tid            | String    | NO       | 200    |
| verticallimitupward  | Real      | NO       |        |
| verticallimitdownward| Real      | NO       |        |

### 4. [Model name] `.ili` model

The [filename] file contains the following classes:

### 4. Conclusions
