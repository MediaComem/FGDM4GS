# Zones_reservees_V1_1

## Description of the tasks

In order to define the model's views, we need to define the attributes to be used in the model. To do this, we analyse the various possible sources:

1. the `DescribeFeatureType` operation of the associated [WFS service](https://geodienste.ch/db/planungszonen_v1_0_0/fra?SERVICE=WFS&VERSION=2.0.0&REQUEST=DescribeFeatureType)
2. the `GetFeatureInfo` operation of the associated [WMS service](https://geodienste.ch/db/planungszonen_v1_0_0/fra?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&CRS=EPSG:3857&BBOX=742465.67788010137155652,5902893.5199219873175025,751489.7654410689137876,5913919.95374835748225451&WIDTH=667&HEIGHT=815&LAYERS=planungszone&FORMAT=image/png&QUERY_LAYERS=planungszone&INFO_FORMAT=application/vnd.ogc.gml&I=500&J=267&FEATURE_COUNT=1)
3. the `GetStyles` operation of the associated [WMS service](https://geodienste.ch/db/planungszonen_v1_0_0/fra?LAYERS=planungszone&REQUEST=GetStyles&SERVICE=WMS&VERSION=1.3.0)
4. the attributes obtained when converting the `.ili` file with the QGIS Model Baker plugin
5. the classes and attributes of the [Zones_reservees_V1_1.ili](https://models.geo.admin.ch/ARE/Zones_reservees_V1_1.ili) model.

### 1. Service WFS (DescribeFeatureType)

The `DescribeFeatureType` operation of the following version of the [WFS service](https://geodienste.ch/db/planungszonen_v1_0_0/fra?SERVICE=WFS&VERSION=2.0.0&REQUEST=DescribeFeatureType) is used to obtain the attributes in French:

| attribute name          | type                    |
|-------------------------|-------------------------|
| wkb_geometry            | gml:GeometryPropertyType|
| t_id                    | integer                 |
| publie_depuis           | string                  |
| valable_jusqu_a         | string                  |
| statut_juridique        | string                  |
| remarques               | string                  |
| code_type               | string                  |
| designation_type        | string                  |
| abreviation_type        | string                  |
| disposition_niveau_type | string                  |
| remarques_type          | string                  |
| canton                  | string                  |

The `DescribeFeatureType` operation of the following version of the [WFS service](https://geodienste.ch/db/planungszonen_v1_0_0/deu?SERVICE=WFS&VERSION=2.0.0&REQUEST=DescribeFeatureType) is used to obtain the attributes in German:

| attribute name     | Type                           | MinOccurs | MaxOccurs |
|--------------------|--------------------------------|-----------|-----------|
| wkb_geometry       | gml:GeometryPropertyType       | 0         | 1         |
| t_id               | integer                        | 0         | 1         |
| publiziert_ab      | string                         | 0         | 1         |
| gueltig_bis        | string                         | 0         | 1         |
| rechtsstatus       | string                         | 0         | 1         |
| bemerkung          | string                         | 0         | 1         |
| code_typ           | string                         | 0         | 1         |
| bezeichnung_typ    | string                         | 0         | 1         |
| abkuerzung_typ     | string                         | 0         | 1         |
| festlegung_stufe_typ | string                       | 0         | 1         |
| bemerkung_typ      | string                         | 0         | 1         |
| kanton             | string


### 1. Service WMS (GetFeatureInfo)

The `GetFeatureInfo` operation of the following WMS [service](https://geodienste.ch/db/planungszonen_v1_0_0/fra?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&CRS=EPSG:3857&BBOX=742465.67788010137155652,5902893.5199219873175025,751489.7654410689137876,5913919.95374835748225451&WIDTH=667&HEIGHT=815&LAYERS=planungszone&FORMAT=image/png&QUERY_LAYERS=planungszone&INFO_FORMAT=application/vnd.ogc.gml&I=500&J=267&FEATURE_COUNT=1) allows to obtain the following attribute aliases (however, without the datatypes) in French:

| alias name              |
|-------------------------|
| wkb_geometry            |
| Publié_depuis           |
| Valable_jusqu_à         |
| Statut_juridique        |
| Remarques               |
| Code_Type               |
| Designation_Type        |
| Abreviation_Type        |
| Disposition_Niveau_Type |
| Remarques_Type          |
| Canton                  |

The `GetFeatureInfo` operation of the following WMS [service](https://geodienste.ch/db/planungszonen_v1_0_0/deu?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&CRS=EPSG:3857&BBOX=742465.67788010137155652,5902893.5199219873175025,751489.7654410689137876,5913919.95374835748225451&WIDTH=667&HEIGHT=815&LAYERS=planungszone&FORMAT=image/png&QUERY_LAYERS=planungszone&INFO_FORMAT=application/vnd.ogc.gml&I=500&J=267&FEATURE_COUNT=1)  allows you to obtain the following attribute aliases (however, without the datatypes) in German:

| alias name              |
|-------------------------|
| wkb_geometry            |
| Publiziert_ab           |
| Gültig_bis              |
| Rechtsstatus            |
| Bemerkung               |
| Code_Typ                |
| Bezeichnung_Typ         |
| Abkürzung_Typ           |
| Festlegung_Stufe_Typ    |
| Bemerkung_Typ           |
| Kanton                  |

By mapping them to the attributes obtained with the `WFS` service, we obtain the following table:

| attribute name FR       | attribute name DE    | type                    | alias name FR           | alias name DE        |
|-------------------------|----------------------|-------------------------|-------------------------|----------------------|
| wkb_geometry            | wkb_geometry         | gml:GeometryPropertyType| wkb_geometry            | wkb_geometry         |
| t_id                    | t_id                 | integer                 |                         |                      |
| publie_depuis           | publiziert_ab        | string                  | Publié_depuis           | Publiziert_ab        |
| valable_jusqu_a         | gueltig_bis          | string                  | Valable_jusqu_à         | Gültig_bis           |
| statut_juridique        | rechtsstatus         | string                  | Statut_juridique        | Rechtsstatus         |
| remarques               | bemerkung            | string                  | Remarques               | Bemerkung            |
| code_type               | code_typ             | string                  | Code_Type               | Code_Typ             |
| designation_type        | bezeichnung_typ      | string                  | Designation_Type        | Bezeichnung_Typ      |
| abreviation_type        | abkuerzung_typ       | string                  | Abreviation_Type        | Abkürzung_Typ        |
| disposition_niveau_type | festlegung_stufe_typ | string                  | Disposition_Niveau_Type | Festlegung_Stufe_Typ |
| remarques_type          | bemerkung_typ        | string                  | Remarques_Type          | Bemerkung_Typ        |
| canton                  | kanton               | string                  | Canton                  | Kanton               |

### 3. Service WMS (GetStyles)

The `GetSyles` operation of the [following](https://geodienste.ch/db/planungszonen_v1_0_0/fra?LAYERS=planungszone&REQUEST=GetStyles&SERVICE=WMS&VERSION=1.3.0) WMS service allows to retrieve the following styles:

- [WMSGetStyles-FR.SLD]()
- [WMSGetStyles-DE.SLD]()

Apart from the names (`<se:Name>`) of the rules (`<se:Rule>`), which differ depending on the language, the two files are identical.

We then use the following linux command:

```bash
grep '<ogc:PropertyName>' WMSGetStyles-DE.SLD | sed 's/.*<ogc:PropertyName>\(.*\)<\/ogc:PropertyName>.*/\1/'
```

to list the attributes present in the file. This gives us the following list:

- festlegung_stufe_typ_de

However, it turns out that the `festlegung_stufe_typ_de` attribute is not consistent with the attributes of the `.ili` model.
This needs to be taken into account when carrying out the WP3 tasks.

### 4. Plugin QGIS Model Baker

The QGIS Model Baker plugin can be used to convert an `.ili` file into a `.gpkg` file containing model data. Using the following gdal commands:
- `ogrinfo <filename> -so`: to obtain the list of layers contained in the file for which we select only the one containing geometry
- `ogrinfo -geom=no -so <filename> <layername>`: to obtain the list of layer attributes

The file `Zones_reserves_V1_1.ili` contains the following information:

`TRANSLATION OF Planungszonen_V1_1 ["2023-03-20"] =` which systematically leads to the translation of the model attributes into German shown in the following table:

| attribute name  | Data Type | Nullable | Length |
|-----------------|-----------|----------|--------|
| geometrie       | Geometry  | No       | N/A    |
| T_basket        | Integer64 | No       | 0.0    |
| T_Id            | Integer64 | No       | 0.0    |
| T_Ili_Tid       | String    | Yes      | 200.0  |
| publiziertab    | Date      | No       | 0.0    |
| publiziertbis   | Date      | No       | 0.0    |
| rechtsstatus    | Integer64 | No       | 0.0    |
| bemerkungen     | String    | Yes      | 0.0    |
| typpz           | Integer64 | No       | 0.0    |

Secondly, we delete the line `TRANSLATION OF Planungszonen_V1_1 ["2023-03-20"] =`, taking care to retain the `=` sign which we add at the end of the previous line: `VERSION "2023-03-20"=`, which gives us the following attributes:

| attribute name    | Data Type | Nullable | Length |
|-------------------|-----------|----------|--------|
| T_Id              | Integer64 | No       | 0.0    |
| geometrie         | Geometry  | No       | N/A    |
| T_basket          | Integer64 | No       | 0.0    |
| T_Ili_Tid         | String    | Yes      | 200.0  |
| publiedepuis      | Date      | No       | 0.0    |
| publiejusqua      | Date      | No       | 0.0    |
| statutjuridique   | Integer64 | No       | 0.0    |
| remarques         | String    | Yes      | 0.0    |
| typezr            | Integer64 | No       | 0.0    |

By analysing these two lists of attributes, we can deduce the following correspondences and differences:

| Column Name DE | Column Name FR | Data Type | Nullable | Length |
|----------------|----------------|-----------|----------|--------|
| T_Id           | T_Id           | Integer64 | No       | 0.0    |
| geometrie      | geometrie      | Geometry  | No       | N/A    |
| T_basket       | T_basket       | Integer64 | No       | 0.0    |
| T_Ili_Tid      | T_Ili_Tid      | String    | Yes      | 200.0  |
| publiziertab   | publiedepuis   | Date      | No       | 0.0    |
| publiziertbis  | publiejusqua   | Date      | No       | 0.0    |
| rechtsstatus   | statutjuridique| Integer64 | No       | 0.0    |
| bemerkungen    | remarques      | String    | Yes      | 0.0    |
| typpz          | typezr         | Integer64 | No       | 0.0    |

5. Zones_reservees_V1_1 `.ili` model

The `Zones_reserves_V1_1.ili` file contains the following classes:

```ili
    CLASS ZoneReservee =
      Geometrie : MANDATORY Zones_reservees_V1_1.SurfaceUnique;
      publieDepuis : MANDATORY INTERLIS.XMLDate;
      publieJusquA : MANDATORY INTERLIS.XMLDate;
      StatutJuridique : MANDATORY Zones_reservees_V1_1.StatutJuridique;
      Remarques : MTEXT;
    END ZoneReservee;

    CLASS Type_ZoneReservee =
      Code : MANDATORY TEXT*40;
      Designation : MANDATORY TEXT*80;
      Abreviation : TEXT*12;
      DispositionNiveau : MANDATORY Zones_reservees_V1_1.DispositionNiveau;
      Remarques : MTEXT;
      Symbole : BLACKBOX BINARY;
    END Type_ZoneReservee;
```

with the folowing associations:

```ili
    ASSOCIATION TypeZR_ZoneReservee =
      ZoneReservee -- {0..*} ZoneReservee;
      TypeZR -<> {1} Type_ZoneReservee;
    END TypeZR_ZoneReservee;
```

which should be taken into account when creating the views.

### 6. Conclusions

The following classes must be taken into account at view level in order to obtain the attributes of the `WFS` and `WMS` linked services:

- ZoneReserve
- Type_ZoneReservee

The attributes and aliases must be able to be described in both languages (French and German).

Also ensure that the `DispositionLevel` attribute of the `.ili` file  corresponding to the `canton` attribute is included in the definition of the data files and the `WFS` and `WMS` services.

Finally, the definitions of the `WFS` and `WMS` services are not uniform and this is where this project can help to improve the situation.

__NOTE__: check that is the purpose of the `Symbole : BLACKBOX BINARY;` in the `.ili` file.