# WP2 & WP3

This folder contains the code elements related to WP2 & WP3 tasks.
The sub-folders correspond to the following tasks:

- **T2-1**: Definition of the flattened structures  
- **T2-2**: Adaptations of the INTERLIS2 data models
- **T2-3**: Creation of WFS services / OGC API Features
- **T2-4**: Analysis of automation possibilities
- **T3-1**: Analysis of INTERLIS2 portrayal possibilities
- **T3-2**: Definition of T1-1 portrayal  models
- **T3-3**: Definition of INTERLIS2 symbology files
- **T3-4**: Definition of traditional stylesheet encodings(SLD, JSON)
- **T3-5**: Analysis of automation possibilities
- **T3-6**: Automation tests

## Remarques générales

### Basic mandatory elements of an ili model

An ili model must contain at least the following elements:

```ili
INTERLIS 2.3;
MODEL <model_name>
AT "<url>"
VERSION "<YYYY-MM-DD>" = 
END <model_name>;
```

### ili2c basic control

`java -jar ili2c.jar <nom_du_modèle.ili>`

### Basic command ili2gpkg

`java -jar ili2gpkg.jar ---schemaimport --dbfile <file_name.gpkg> <nom_du_modèle.ili>`

### ili2pg basic command

`java -jar ili2pg.jar --schemaimport --dbdatabase <db_name> --dbusr <db_username> --dbpwd <db_pwd> <nom_du_modèle.ili>`

`java -jar .\ili2pg\ili2pg.jar --schemaimport --dbdatabase postgres --dbusr postgres --dbpwd postgres .\model\Planungszonen_V1_1.ili`

__NOTE:__
- it may be necessary to add the `--createBasketCol` option for tables to be inserted into the database correctly.
- the `--createFk` option is used to create foreign keys for columns which reference other tables.
- the `--createEnumTabs` option is used to create tables for enumerated types.
- the `--createEnumTabsWithId` option is used to create tables for enumerated types and to reference the `t_id` as a foreign key in tables which use these enumerated types.
    - Wouldn't it be better to create `ENUM` columns in tables using these enumerated types, or to use `REFERENCES` rather than `FOREIGN KEY`?
    - see issue [#530](https://github.com/claeis/ili2db/issues/530)
- the `VIEW` associated with several models reinforces the idea of defining them in a model and derived file.

### Exporting a gdb file to a transfer file

`java -jar .\<nom_du_fichier_ili2db>\<nom_du_fichier_ili2db>.jar --export --models <nom_du_modèle> --dbfile <file_name_avec_extension> <nom_du_fichier.xtf>`

### Basic ilivalidator command

`java -jar .\ilivalidator\ilivalidator.jar [options] <nom_du_fichier.xtf>`

### Initial comments on the creation of VIEWS

- several examples of VIEWs can be consulted on the [ili2c repo](https://github.com/claeis/ili2c/tree/master/test/data/ili23/view)
- VIEWs associated with several models reinforce the idea of defining them in a model and derived file.
- There are 4 main ways of creating `VIEWs' (see [Reference Manual - section 2.15 Views (p.68)](https://www.interlis.ch/download/interlis2/ili2-refman_2006-04-13_f.pdf))
- on the basis of the models currently under consideration, VIEWs have been defined in 2 ways:
    - using the `JOIN` method with `WHERE` clauses involving the classes and the roles which link them
    - using the `PROJECTION OF` method with the association(s); the attributes are defined by referencing the associations to which they relate, as well as the classes and attributes to which they relate.
    - the 2 methods identified involve defining the related associations first