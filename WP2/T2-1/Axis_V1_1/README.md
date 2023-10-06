# Axis_V1_1

## Description of the tasks

In order to define the model's views, we need to define the attributes to be used in the model. To do this, we analyse the various possible sources:

1. the `GetFeatureInfo` operation of the associated [WMS service]()
2. the `GetStyles` operation of the associated [WMS service]()
3. the attributes obtained when converting the `.ili` file with the QGIS Model Baker plugin
4. the classes and attributes of the `.ili` model file

### 1. Service WMS (GetFeatureInfo)

The `GetFeatureInfo` operation of the following WMS [service](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.nationalstrassenachsen&QUERY_LAYERS=ch.astra.nationalstrassenachsen&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/plain&I=1&J=1&lang=fr)  allows to obtain the following attribute aliases (however, without the datatypes) in French:

| alias name              |
|-------------------------|
| Propriétaire            |
| Nom_de_segment          |
| No_de_route             |
| Description             |
| Code_de_position        |
| Nom_du_point_de_repère  |
| Valeur_kilométrique_km  |
| Longueur_de_secteur_m   |
| Séquence                |

The `GetFeatureInfo` operation of the following WMS [service](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.nationalstrassenachsen&QUERY_LAYERS=ch.astra.nationalstrassenachsen&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/plain&I=1&J=1)  allows to obtain the following attribute aliases (however, without the datatypes) in German:

| alias name              |
|-------------------------|
| Eigentümer              |
| Segmentname             |
| Strassennummer          |
| Bezeichnung             |
| Positionscode           |
| Bezugspunkt_Name        |
| Kilometerwert_km        |
| Sektorlänge_m           |
| Sequenz                 |

By mapping them together, we obtain the following table:

| alias name FR         | alias name DE   |
|-----------------------|-----------------|
| Propriétaire          | Eigentümer      |
| Nom_de_segment        | Segmentname     |
| No_de_route           | Strassennummer  |
| Description           | Bezeichnung     |
| Code_de_position      | Positionscode   |
| Nom_du_point_de_repère| Bezugspunkt_Name|
| Valeur_kilométrique_km| Kilometerwert_km|
| Longueur_de_secteur_m | Sektorlänge_m   |
| Séquence              | Sequenz         |

### 2. Service WMS (GetStyles)

The `GetSyles` operation of the [following](https://wms.geo.admin.ch/?REQUEST=GetStyles&LAYERS=ch.astra.baulinien-nationalstrassen&SERVICE=WMS&VERSION=1.3.0) WMS service allows to retrieve the following styles:

- WMSGetStyles-FR.SLD
- WMSGetStyles-DE.SLD

Apart from the names (`<se:Name>`) of the rules (`<se:Rule>`), which differ depending on the language, the two files are identical.

We then use the following linux command:

```bash
grep '<ogc:PropertyName>' WMSGetStyles-DE.SLD | sed 's/.*<ogc:PropertyName>\(.*\)<\/ogc:PropertyName>.*/\1/'
```
to list the attributes present in the file. This gives us the following list:

- bgdi_type
- zwischensektor
- name

### 3. Plugin QGIS Model Baker

The following layers in the `.gpkg` file contain a geometry column:

- 1: axissegmentgeometry (3D Line String)
- 2: calpoint (3D Point)
- 3: sector (3D Point)
- 4: materialization (3D Point)

Since the geometry obtained with the `GetFeatureInfo` operation is of type `linestring`, we can assume that the `axissegmentgeometry` layer is the one corresponding to the road axis. This gives us the following attributes:

| attribute name       | Data Type | Nullable | Length |
|----------------------|-----------|----------|--------|
| T_Id                 | Integer64 | No       | 0.0    |
| ageometry            | Geometry  | No       |        |
| T_basket             | Integer64 | No       |        |
| T_Ili_Tid            | String    | No       | 36     |
| T_Seq                | Integer64 | No       |        |
| capturemethod        | Integer64 | No       |        |
| capturedate          | Date      | No       |        |
| accuracyhorizontal   | Real      | No       |        |
| accuracyvertical     | Real      | No       |        |
| axissegment_geometry | Integer64 | No       |        |

### 4. [Model name] `.ili` model

The [filename] file contains the following classes:

### 4. Conclusions
