# HousingInventory_V1

## Description of the tasks

In order to define the model's views, we need to define the attributes to be used in the model. To do this, we analyse the various possible sources:

1. the `GetFeatureInfo` operation of the associated [WMS service]()
2. the `GetStyles` operation of the associated [WMS service]()
3. the attributes obtained when converting the `.ili` file with the QGIS Model Baker plugin
4. the classes and attributes of the `.ili` model file

### 1. Service WMS (GetFeatureInfo)

The `GetFeatureInfo` operation of the following WMS [service](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.are.wohnungsinventar-zweitwohnungsanteil&QUERY_LAYERS=ch.are.wohnungsinventar-zweitwohnungsanteil&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/plain&I=1&J=1)  allows to obtain the following attribute aliases (however, without the datatypes) in French (by adding the following string to the URL: `&lang=fr`):

| alias name                                                 |
|------------------------------------------------------------|
| Commune                                                    |
| Numéro_OFS                                                 |
| Procédure                                                  |
| Nombre_de_résidences_prin-cipales                          |
| Nombre_de_résidences_assimilées_à_une_résidence_principale |
| Proportion_de_résidences_principales                       |
| Proportion_de_résidences_secondaires                       |
| Nombre_total_de_logements                                  |
| Statut                                                     |

as well as the following result in German (by keeping the URL as it is):

| alias name                                                 |
|------------------------------------------------------------|
| Gemeinde                                                   |
| BFS-Nummer                                                 |
| Verfahren                                                  |
| Anzahl_Erstwohnungen                                       |
| Anzahl_Erstwohnungen_gleichgestellte_Wohnungen             |
| Erstwohnungsanteil                                         |
| Zweitwohnungsanteil                                        |
| Gesamtzahl_aller_Wohnungen                                 |
| Status                                                     |

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

### 3. Plugin QGIS Model Baker

The following layers in the `.gpkg` file contain a geometry column:

- 1: surfacestructure (Polygon)
- 2: housinginventory (Multi Polygon)

Since the geometry obtained with the `GetFeatureInfo` operation is of type `Polygon`, we can assume that the `buildingrestrictionarea` layer is the one corresponding to the road axis. This gives us the following attributes:

| attribute name       | Data Type | Nullable | Length |
|--------------------  |-----------|----------|--------|
| T_Id                 | Integer64 | NO       |        |
| T_basket             | Integer64 | NO       |        |
| T_Ili_Tid            | String    | NO       | 200    |
| T_Seq                | Integer64 | NO       |        |
| multisurface_surfaces| Integer64 | NO       |        |

### 4. [Model name] `.ili` model

The [filename] file contains the following classes:

### 4. Conclusions