# SectoralPlanForRoadInfrastructure_V1_4

## Description of the tasks

In order to define the model's views, we need to define the attributes to be used in the model. To do this, we analyse the various possible sources:

1. the `GetFeatureInfo` operation of the associated [WMS service]()
2. the `GetStyles` operation of the associated [WMS service]()
3. the attributes obtained when converting the `.ili` file with the QGIS Model Baker plugin
4. the classes and attributes of the `.ili` model file

### 1. Service WMS (GetFeatureInfo)

The `GetFeatureInfo` operation of the following WMS [service](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.sachplan-infrastruktur-strasse_kraft&QUERY_LAYERS=ch.astra.sachplan-infrastruktur-strasse_kraft&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/plain&I=1&J=1)  allows to obtain the following attribute aliases (however, without the datatypes) both for the French and German versions:

| alias name        |
|-------------------|
| stabil_id         |
| facname_de        |
| facname_fr        |
| facname_it        |
| facstatus_tid     |
| facstatus_text_de |
| facstatus_text_fr |
| facstatus_text_it |
| fackind_tid       |
| fackind_text_de   |
| fackind_text_fr   |
| fackind_text_it   |
| description_de    |
| description_fr    |
| description_it    |
| objname_de        |
| objname_fr        |
| objname_it        |
| validfrom         |
| doc_title         |
| doc_web           |

and the two layers:
- 'ch.astra.sachplan-infrastruktur-strasse_kraft_fac_lines'
- 'ch.astra.sachplan-infrastruktur-strasse_kraft_points_1_01'

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

- meastype_tid  
- coordlevel_tid
- meastype_tid
- fackind_tid
- facstatus_tid

### 3. Plugin QGIS Model Baker

The QGIS Model Baker plugin can be used to convert an `.ili` file into a `.gpkg` file containing model data. Using the following gdal commands:
- `ogrinfo <filename> -so`: to obtain the list of layers contained in the file for which we select only the one containing geometry
- `ogrinfo -geom=no -so <filename> <layername>`: to obtain the list of layer attributes

The following layers in the `.gpkg` file contain a geometry column:

- 1: linestructure (Line String)
- 2: surfacestructure (Polygon)
- 3: pointstructure (Point)
- 4: facility (Multi Line String)


1: linestructure (Line String)

  FID Column = T_Id
  Geometry Column = line
  T_basket: Integer64 (0.0) NOT NULL
  T_Ili_Tid: String (200.0)
  T_Seq: Integer64 (0.0)
  multiline_lines: Integer64 (0.0)

2: surfacestructure (Polygon)

  FID Column = T_Id
  Geometry Column = surface
  T_basket: Integer64 (0.0) NOT NULL
  T_Ili_Tid: String (200.0)
  T_Seq: Integer64 (0.0)
  multisurface_surfaces: Integer64 (0.0)

3: pointstructure (Point)

  FID Column = T_Id
  Geometry Column = apoint
  T_basket: Integer64 (0.0) NOT NULL
  T_Ili_Tid: String (200.0)
  T_Seq: Integer64 (0.0)
  amultipoint_points: Integer64 (0.0)

4: facility (Multi Line String)

  FID Column = T_Id
  Geometry Column = line
  T_basket: Integer64 (0.0) NOT NULL
  T_Ili_Tid: String (200.0)
  aname: String (0.0)
  aname_de: String (0.0)
  aname_fr: String (0.0)
  aname_rm: String (0.0)
  aname_it: String (0.0)
  aname_en: String (0.0)
  facilitykind: Integer64 (0.0)
  facilitystatus: Integer64 (0.0)
  symbolori: Real (0.0)
  adescription: String (0.0)
  adescription_de: String (0.0)
  adescription_fr: String (0.0)
  adescription_rm: String (0.0)
  adescription_it: String (0.0)
  adescription_en: String (0.0)
  aobject: Integer64 (0.0) NOT NULL

5: facility_surface (Multi Polygon)

  FID Column = T_Id
  Geometry Column = surface
  T_basket: Integer64 (0.0) NOT NULL

6: planningmeasure (Multi Line String)

  FID Column = T_Id
  Geometry Column = line
  T_basket: Integer64 (0.0) NOT NULL
  T_Ili_Tid: String (200.0)
  aname: String (0.0)
  aname_de: String (0.0)
  aname_fr: String (0.0)
  aname_rm: String (0.0)
  aname_it: String (0.0)
  aname_en: String (0.0)
  measuretype: Integer64 (0.0)
  coordinationlevel: Integer64 (0.0)
  planningstatus: Integer64 (0.0)
  symbolori: Real (0.0)
  adescription: String (0.0)
  adescription_de: String (0.0)
  adescription_fr: String (0.0)
  adescription_rm: String (0.0)
  adescription_it: String (0.0)
  adescription_en: String (0.0)
  facility: Integer64 (0.0) NOT NULL

7: planningmeasure_surface (Multi Polygon)

  FID Column = T_Id
  Geometry Column = surface
  T_basket: Integer64 (0.0) NOT NULL

### 4. [Model name] `.ili` model

The [filename] file contains the following classes:

### 4. Conclusions
