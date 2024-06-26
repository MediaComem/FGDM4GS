---
title: FGDM4GS
description: Présentation des perspectives liées à l'utilisation d'INTERLIS pour la publication de géoservices.
theme: white # get the list here: https://revealjs.com/themes/
# theme: stylesheets/collab-theme.css
# customTheme: _assets/stylesheets/collab-theme
revealOptions: {
  transition: 'slide',
  slideNumber: false,
  navigationMode: 'grid',
  overview: true,
  autoPlayMedia: true,
}
---
# FGDM4GS

----
## Contexte du projet

- LGéo ([art. 5](https://www.fedlex.admin.ch/eli/cc/2008/388/fr#art_5))et OGéo ( sections [3](https://www.fedlex.admin.ch/eli/cc/2008/389/fr#sec_3) et [4](https://www.fedlex.admin.ch/eli/cc/2008/389/fr#sec_3))
- Modèles de géodonnées minimaux (MGDM)
- Confédération
- Cantons

Note: L'acronyme FGDM4GS signifie "Flat Geodata Models for Geoservices". Ce projet s'inscrit dans le contexte de la LGéo et de l'OGéo qui font mention de modèles de géodonnées minimaux (MGDM) définis par la Confédération que les Cantons se doivent de respecter.

----
## Contexte du projet

<div style="display: flex; align-items: flex-start;">
<div>

- Données & géoservices
- Diversité représentations
- ~~INTERLIS-GML~~ [eCH-0056 4.0](https://www.ech.ch/fr/ech/ech-0056/4.0.0)

</div>
<div>

<img src="assets/waldreservate-geocat.png" width="400">

</div>
</div>

Note: A ajouter plus tard

----
## Objectifs du projet

- Harmonisation de géoservices
    - Dénormalisation de modèles (mise à plat)
    - Définition de `VIEWS`
- Représentation cartographique
- Perspectives & recommendations

Note: Le projet FGDM4GS vise à explorer les possibilités offertes par la définition de `VIEWS` pour harmoniser la publication de géoservices ainsi que les possibilités de représentation cartographique avec INTERLIS. Cela consiste à établir des règles de dénormalisation ou mise à plat des modèles par la définition de `VIEWS`. Il s'agit également de voir comment les modèles de représentation cartographique peuvent être définis avec INTERLIS. Enfin, il s'agit de formuler des perspectives et des recommandations pour l'utilisation d'INTERLIS dans le contexte de la publication de géoservices.

----
## Workplan

![Workplan](assets/workplan.png)


Note: A ajouter plus tard

---
## Situation de départ

----
### Dénormalisation (mise à plat)

- `VIEWS`
- Définies à la section [2.15. "Sichten"](https://geostandards-ch.github.io/doc_refhb24/#_sichten) du manuel de référence d'INTERLIS (refhb24).

```interlis
ViewDef = 'VIEW' View-Name
            Properties<ABSTRACT,EXTENDED,FINAL,TRANSIENT>
            [ FormationDef | 'EXTENDS' ViewRef ]
                { BaseExtensionDef }
                { Selection }
            '='
            [ ViewAttributes ]
            { ConstraintDef }
          'END' View-Name ';'.

ViewRef = [ Model-Name '.' [ Topic-Name '.' ] ] View-Name.
``` 

Note: La définition de `VIEWS` est une fonctionnalité d'INTERLIS qui permet de définir des vues sur des modèles de données. Ces vues peuvent être utilisées pour harmoniser la publication de géoservices. Le concept de `VIEWS` est défini dans le manuel de référence d'INTERLIS (refhb24) à la section [2.15. Sichten](https://geostandards-ch.github.io/doc_refhb24/#_sichten). (Nous faisons ici référence à la version allemande du manuel de référence d'INTERLIS (refhb24) car il en existe une version en asciidoc publiée sur le compte GitHub de Geostandards.ch permettant d'en référencer les sections).

----
### Contexte d'utilisation

- Modèles minimaux de géodonnées (MGDM)
    - [geobasisdaten.ch](https://geobasisdaten.ch)
    - [geocat.ch](https://geocat.ch)

Note: Les `VIEWS` pourraient être utilisées pour harmoniser la publication de géoservices. Les MGDM sont des modèles de données définis par la Confédération. Ils sont publiés sur [geobasisdaten.ch](https://geobasisdaten.ch) et [geocat.ch](https://geocat.ch). Il serait intéressant de voir si les `VIEWS` pourraient être utilisées pour harmoniser la publication de géoservices pour ces modèles de données.

----
### Modèle de représentation

- [Portrayal Recommendation for MGDM](https://drive.switch.ch/index.php/apps/onlyoffice/6708010256?filePath=/mediamaps/01-Projets/02-En-cours/01-Flache-Geodatenmodelle/Références/Report_a_1.0.pdf), 2013
- Approche tabulaire
- Très peu utilisée (**3%** des entrées [geobasisdaten.ch](https://geobasisdaten.ch/))

<p align="center">
  <img src="assets/TabSheet.png" width=500 />
</p>

Note: En 2013, une recommandation a été publiée pour la représentation cartographique des MGDM. Cette recommandation propose une approche tabulaire pour la représentation cartographique. La consigne à l’époque avait été de ne pas utiliser INTERLIS malgré le fait qu’un modèle de symbologie existe depuis 2005. Il serait intéressant de poser la question aux responsables du projet pourquoi une telle décision a été prise. La recommandation propose une approche tabulaire pour la représentation cartographique qui s’avère cependant très peu utilisée (3% des entrées [geobasisdaten.ch](https://geobasisdaten.ch/)).

---
## Approche proposée

----
### Dénormalisation (mise à plat)

- Sélection de MGDM
- Possibilités de définir des `VIEWS`
- MGDM avec `VIEWS`
- Recommandations
- Pipeline de publication de géoservices?

Note: L'approche proposée consiste à sélectionner des MGDM pour lesquels des `VIEWS` peuvent être définies compte tenu des informations à disposition. Nous nous intéressons ensuite à la manière dont les `VIEWS` peuvent être définies et appliquons le concept aux modèles sélectionnés. Nous formulons des recommandations pour la création de `VIEWS` et explorons finalement la possbilité d'automatier la publication de géoservices.

----
### Modèles de représentation

- Capacités INTERLIS
- Définition de styles basiques
- Application aux MGDM sélectionnés
- Corresponce & Transcoding

Note: Nous nous intéressons en 1er lieu à la manière dont les modèles de représentation cartographique peuvent être définis avec INTERLIS. Nous explorons les possibilités offertes par INTERLIS pour la définition de styles basiques et appliquons le concept aux MGDM sélectionnés. Nous explorons finalement la correspondance entre INTERLIS et les différents langages de description de styles cartographiques ainsi que la possibilité de transcoding entre les différents langages de description de styles cartographiques.

---
## Résultats préliminaires

----
### Sélection de MGDM

- Aspects métiers
    - Jeu de données dénormalisé (ou "à plat")
    - Géoservices
    - Informations de représentation
- Identification des géoservices associés

Note: Aucune vue n'a pu être trouvée dans les MGDM. Ces dernières dépendent d'aspects métiers. Une solution réside dans le fait d'identifier des jeux de données dénormalisés (ou "à plat") ou des géoservices associés de manière à pouvoir les définir.

----
### Sélection de MGDM

- Création `VIEWS`
- Informations de représentation

<p align="center">
  <img src="assets/MGDM-selection.svg" width=800 />
</p>

Note: Le schéma suivant illustre le concept de sélection de MGDM. Les informations de geobasisdaten.ch sont mises en relation avec les géoservices associés en sollicitant le service CSW (Catalog Service for the Web) de geocat.ch afin d'obtenir les attributs à intégrer dans les `VIEWS`.

----
### Sélection de MGDM

- **347** entrées [geobasisdaten.ch](https://geobasisdaten.ch/) (14.02.2024)
    - **80%** modèle INTERLIS
    - Aucune `VIEWS`
    - **<5%** infos de représentation `.xlsx`
    - **33%** liens géoservices
- Complexité des modèles

Note: [geobasisdaten.ch](https://geobasisdaten.ch/) contenait 347 entrées au 14.02.2023. 80% (283/347) de ces entrées contiennent un lien vers un modèle de données (`.ili`). Aucun modèle ne comporte de `VIEWS`. <5% (~10/347) de ces entrées contiennent un lien vers des informations de représentation au format xlsx. 33% (115/347) de ces entrées ont pu être reliées à des géoservices. Finalement, la complexité des modèles de données a également été prise en compte pour la sélection des modèles de données.

----
### Sélection de MGDM

| Référence | Data Modell   | GetFeatureInfo |
| --------- | ------------- | ---------- |
| [86.1](https://geobasisdaten.ch/detail/992003/)     | [Lien](http://models.geo.admin.ch/ASTRA/Axis_V1_1.ili) | [Lien](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.nationalstrassenachsen&QUERY_LAYERS=ch.astra.nationalstrassenachsen&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/plain&I=1&J=1&lang=fr)|
|[16.1](https://geobasisdaten.ch/detail/990767/), [17.1](https://geobasisdaten.ch/detail/990822/)| [Lien](https://models.geo.admin.ch/ASTRA/IVS_V2_1.ili)|[Lien](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.ivs-nat&QUERY_LAYERS=ch.astra.ivs-nat&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/xml&I=1&J=1)|
| [76.1](https://geobasisdaten.ch/detail/989814/) | [Lien](https://models.geo.admin.ch/ARE/Zones_reservees_V1_1.ili)  | [Lien](https://geodienste.ch/db/planungszonen_v1_0_0/fra?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&CRS=EPSG:3857&BBOX=742465.67788010137155652,5902893.5199219873175025,751489.7654410689137876,5913919.95374835748225451&WIDTH=667&HEIGHT=815&LAYERS=planungszone&FORMAT=image/png&QUERY_LAYERS=planungszone&INFO_FORMAT=application/vnd.ogc.gml&I=500&J=267&FEATURE_COUNT=1) |
| [72.1](https://geobasisdaten.ch/detail/819137/) | [Lien](https://models.geo.admin.ch/ASTRA/SectoralPlanForRoadInfrastructure_V1_4.ili) | [Lien](https://wms.geo.admin.ch/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetFeatureInfo&LAYERS=ch.astra.sachplan-infrastruktur-strasse_kraft&QUERY_LAYERS=ch.astra.sachplan-infrastruktur-strasse_kraft&CRS=EPSG:2056&BBOX=2531423.89,1155079.22,2532223.89,1155679.22&FEATURE_COUNT=1&HEIGHT=2&WIDTH=2&FORMAT=image/png&INFO_FORMAT=text/plain&I=1&J=1) |

Note: Nous avons sélectionné les modèles de données suivants pour lesquels des `VIEWS` peuvent être définies compte tenu des géoservices associés ainsi qu'en fonction de leur complexité.

----
### Définition de `VIEWS`

- `PROJECTION OF`
- `JOIN OF` & `WHERE`
- `UNION OF`
- `AGGREGATION OF`
- `INSPECTION OF`

Note: Il existe **5** possibilités pour définir des `VIEWS` en INTERLIS. Elles seront présentés dans les slides suivantes.

----
#### `PROJECTION OF`

```interlis
INTERLIS 2.3;
CONTRACTED MODEL Test  AT "http://www.interlis.ch/ili2c/tests/" VERSION "1"=
  FUNCTION makeConstant(text : TEXT):TEXT;
  TOPIC Base = 
    STRUCTURE A =
      Attr1: TEXT*20;
    END A;
    CLASS B =
      Attr1: TEXT*20;
      Attr2: BAG OF A;
    UNIQUE
      Attr1;
    END B;
  END Base;
  TOPIC ViewProjection =
    DEPENDS ON Test.Base;
    VIEW VB PROJECTION OF Test.Base.B;
	 =
      ATTRIBUTE
        ALL OF B;
        Attr3 : TEXT*80 := makeConstant("hello World");
    END VB;
  END ViewProjection;
END Test.
```

Lien vers le [modèle](https://github.com/claeis/ili2c/blob/c506ae466333d726b885ca7fae4ce6825e94176d/test/data/ili23/view/view_AcceptBasicViewProjectionDef.ili)

Note: Selon le manuel de référence (refhb24), la vue projection (mot-clé PROJECTION OF) constitue la vue la plus simple. Elle permet de visualiser la classe de base (classe, structure, association ou vue) sous une forme modifiée (affichage d’une partie seulement des attributs et selon un ordre modifié, par exemple). Cela peut être utile pour simplifier l’affichage des données ou pour les adapter à un contexte particulier. Par exemple, on peut imaginer une vue qui affiche les données d'une table de données de manière plus conviviale afin notamment d'éviter d'avoir recours à `TRANSLATION OF` et de devoir retranscrire tout le modèle.

----
#### `JOIN OF` & `WHERE`

```interlis
INTERLIS 2.3;
MODEL Test  AT "http://www.interlis.ch/ili2c/tests/" VERSION "1"=
  TOPIC Base = 
    CLASS B =
      Attr1: TEXT*20;
      Attr2: TEXT*10;
    END B;
    CLASS C =
      Attr3: TEXT*30;
    END C;
  END Base;
  TOPIC Join =
    DEPENDS ON Test.Base;
    VIEW BC
      JOIN OF B ~ Test.Base.B,C ~ Test.Base.C (OR NULL);
      WHERE B->Attr1 == C->Attr3;
	=
      ATTRIBUTE
        ALL OF B;
        ALL OF C;
    END BC;
  END Join;
END Test.
```

Lien vers le [modèle](https://github.com/claeis/ili2c/blob/c506ae466333d726b885ca7fae4ce6825e94176d/test/data/ili23/view/view_AcceptBasicJoinDef.ili)

Note: Selon le manuel de référence (refhb24), la vue jonction (mot-clé JOIN OF) permet de former le produit cartésien (ou produit vectoriel) des classes de base (classe ou vue), c.-à-d. qu’il existe alors autant d’objets de la classe de jonction que de combinaisons d’objets des différentes classes de base. Le fait de lui associer une clause `WHERE` permet de définir les champs de jonction. Cela peut être utile pour associer, par exemple, des statistiques cantonales en matière de votation compte tenu de différents critères.
----
#### `UNION OF`

```interlis
INTERLIS 2.3;
MODEL Test  AT "http://www.interlis.ch/ili2c/tests/" VERSION "1"=
  TOPIC Base = 
    CLASS C1 =
      Attr1: TEXT*10;
    END C1;
    CLASS C2 =
      Attr2: TEXT*30;
    END C2;
  END Base;
  TOPIC Union =
    DEPENDS ON Test.Base;
    VIEW CC 
      UNION OF C1 ~ Test.Base.C1,C2 ~ Test.Base.C2;
	=
      ATTRIBUTE
        Attr1 : TEXT*30 := C1->Attr1,C2->Attr2;
    END CC;
  END Union;
END Test.
```

Lien vers le [modèle](https://github.com/claeis/ili2c/blob/c506ae466333d726b885ca7fae4ce6825e94176d/test/data/ili23/view/view_AcceptBasicUnionDef.ili)

Note: Selon le manuel de référence (refhb24), la vue union (mot-clé UNION OF) permet la fusion de différentes classes de base en une classe unique. Les attributs des différentes classes de base sont généralement affectés à un attribut de la vue union. Le type d’attribut de la classe de base doit être compatible avec celui de la vue union (même type ou extension de celui-ci). Cela permet par exemple de fusionner 2 jeux de données possédant une même structure.

----
#### `AGGREGATION OF`

```interlis
INTERLIS 2.3;
CONTRACTED MODEL Test  AT "http://www.interlis.ch/ili2c/tests/" VERSION "1"=
  TOPIC Base = 
    CLASS B =
      Attr1: TEXT*20;
    END B;
  END Base;
  FUNCTION countB(elements : BAG OF Test.Base.B):NUMERIC;
  TOPIC Aggregation =
    DEPENDS ON Test.Base;
    VIEW VB2 
      AGGREGATION OF Test.Base.B  EQUAL(B->Attr1);
	=
      ATTRIBUTE
        ElementCount : 0 .. 10000 := countB(AGGREGATES);
    END VB2;
  END Aggregation;
END Test.
```

Lien vers le [modèle](https://github.com/claeis/ili2c/blob/c506ae466333d726b885ca7fae4ce6825e94176d/test/data/ili23/view/view_AcceptBasicAggregationDef.ili)

Note: Selon le manuel de référence (refhb24), la vue agrégation (mot-clé AGGREGATION OF) permet de regrouper, en une même instance, toutes les instances d’un ensemble de base ou celles présentant une identité avec la combinaison d’attributs requise. Cela permet par exemple de calculer des statistiques sur un ensemble de données.

----
#### `INSPECTION OF`

```interlis
INTERLIS 2.3;
MODEL Test AT "http://www.interlis.ch/ili2c/tests/" VERSION "1" =
  TOPIC Base = 
    STRUCTURE A =
      Attr1: TEXT*20;
    END A;
    CLASS B =
      Attr2: BAG OF A;
    END B;
    VIEW VB 
      INSPECTION OF Test.Base.B->Attr2;
	=
      ATTRIBUTE
      Attr1: TEXT*20 := B->Attr1;
    END VB;
  END Base;
END Test.
```

Lien vers le [modèle](https://github.com/claeis/ili2c/blob/c506ae466333d726b885ca7fae4ce6825e94176d/test/data/ili23/view/view_AcceptBasenameOfUnrenamedInspectionDef.ili)

Note: Selon le manuel de référence (refhb24), la vue inspection (mot-clé INSPECTION OF) permet d’obtenir l’ensemble de tous les éléments structurés (définis via BAG OF, LIST OF ou dans le respect d’une ligne, d’une surface simple ou d’une partition d’un territoire) appartenant à un attribut de sous-structure (direct ou indirect) d’une classe d’objets. Cela permet d'exploser une liste d'éléments pour les afficher de manière structurée.

----
### Exemple MGDM #1

```interlis
INTERLIS 2.3;
MODEL Axis_LV95_V1_1_d (en)
  AT "mailto:maxime.collombin@heig-vd.ch"
  VERSION "2023-12-06" =
    IMPORTS Axis_LV95_V1_1;
    TOPIC Axis_d EXTENDS Axis_LV95_V1_1.Axis =
      VIEW view_Axis
        JOIN OF Axis_LV95_V1_1.Axis.Axis, Axis_LV95_V1_1.Axis.AxisSegment, Axis_LV95_V1_1.Axis.Sector;
        WHERE
          Axis->rAxisSegment == AxisSegment
          AND
          AxisSegment->rLinearReference == Sector; 
          =
        ATTRIBUTE
          wkb_geometry := AxisSegment -> Geometry;
          Eigenumer := Axis -> Owner;
          Segmentname := AxisSegment -> SegmentName;
          Strassennummer := Axis -> AxisName;
          Bezeichnung := Axis -> AxisNameLong;
          Positionscode := Axis -> AxisPositionCode;
          Bezugspunkt_Name := Sector -> SectorName;
          Kilometerwert_km := Sector -> Km;
          Sektorlange_m := Sector -> SectorLength;
          Sequenz := Sector -> Sequence;
      END view_Axis;
    END Axis_d;
END   Axis_LV95_V1_1_d.
```

Note: Les exemples de `VIEWS` pour les modèles de données sélectionnés ont été définis en INTERLIS. Ces exemples illustrent les possibilités offertes par INTERLIS pour la définition de `VIEWS`. Les `VIEWS` ont été définies pour les modèles de données suivants: Axis_LV95_V1_1, IVS_V2_1, Planungszonen_V1_1 et BaseModel_SectoralPlans_LV95_V1_4.

----
### Exemple MGDM #2

```interlis
INTERLIS 2.3;
MODEL IVS_V2_1_d
AT "mailto:maxime.collombin@heig-vd.ch"
VERSION "2023-12-04" = 
    IMPORTS IVS_V2_1;
    TOPIC IVS_Ik_d EXTENDS IVS_V2_1.IVS_Inventarkarte =
        VIEW view_ivs
            JOIN OF IVS_V2_1.IVS_Inventarkarte.ivs_linienobjekte_base, IVS_V2_1.IVS_Inventarkarte.ivs_linienobjekte_lv95, IVS_V2_1.IVS_Inventarkarte.ivs_objekte, IVS_V2_1.IVS_Inventarkarte.ivs_signatur_linie, IVS_V2_1.IVS_Inventarkarte.ivs_kantone, IVS_V2_1.IVS_Inventarkarte.ivs_streckenbeschriebe, IVS_V2_1.IVS_Inventarkarte.ivs_slanamen;
            WHERE
                ivs_slanamen->Role_ivs_objekte == ivs_linienobjekte_base
                AND
                ivs_objekte->Role_ivs_kantone == ivs_kantone
                AND
                ivs_streckenbeschriebe->Role_ivs_objekte == ivs_objekte
                AND
                ivs_linienobjekte_base->Role_ivs_signatur_linie == ivs_signatur_linie
                AND
                ivs_linienobjekte_base->Role_ivs_objekte == ivs_objekte;
                =
            ATTRIBUTE
                wkb_geometry := ivs_linienobjekte_lv95 -> ivs_geometrie;
                ivs_nummer := ivs_objekte -> ivs_nummer;
                ivs_signatur_label := ivs_signatur_linie -> ivs_deutsch;
                ivs_kanton := ivs_kantone -> ivs_kanton;
                ivs_sladatehist := ivs_streckenbeschriebe -> ivs_sladatehist;
                ivs_sladatemorph := ivs_streckenbeschriebe -> ivs_sladatemorph;
                ivs_slabedeutung := ivs_objekte -> ivs_slabedeutung;
                ivs_sortsla := ivs_objekte -> ivs_sortsla;
                ivs_slaname := ivs_slanamen -> ivs_slaname;
        END view_ivs;
    END IVS_Ik_d;
END IVS_V2_1_d.
```

Note: Les exemples de `VIEWS` pour les modèles de données sélectionnés ont été définis en INTERLIS. Ces exemples illustrent les possibilités offertes par INTERLIS pour la définition de `VIEWS`. Les `VIEWS` ont été définies pour les modèles de données suivants: Axis_LV95_V1_1, IVS_V2_1, Planungszonen_V1_1 et BaseModel_SectoralPlans_LV95_V1_4.

----
### Exemple MGDM #3

```interlis
INTERLIS 2.3;
MODEL Planungszonen_V1_1_d_A
AT "mailto:maxime.collombin@heig-vd.ch"
VERSION "2023-12-04" =
    IMPORTS Planungszonen_V1_1;
    TOPIC PZ_d EXTENDS Planungszonen_V1_1.Geobasisdaten =
      VIEW view_pz
        JOIN OF Planungszonen_V1_1.Geobasisdaten.Planungszone, Planungszonen_V1_1.Geobasisdaten.Typ_Planungszone; 
        WHERE 
           Planungszone->TypPZ == Typ_Planungszone;
           =
        ATTRIBUTE
         wkb_geometry := Planungszone -> Geometrie;
         publiziert_ab := Planungszone -> publiziertAb;
         gueltig_bis := Planungszone -> publiziertBis;
         rechtsstatus := Planungszone -> Rechtsstatus;
         bemerkungen := Planungszone -> Bemerkungen;
         code_typ := Typ_Planungszone -> Code;
         bezeichnung_typ := Typ_Planungszone -> Bezeichnung;
         abkuerzung_typ := Typ_Planungszone -> Abkuerzung;
         festlegung_stufe_typ := Typ_Planungszone -> Festlegung_Stufe;
         bemerkung_typ := Typ_Planungszone -> Bemerkungen;
      END view_pz;
    END PZ_d;
END Planungszonen_V1_1_d_A.
```

Note: Les exemples de `VIEWS` pour les modèles de données sélectionnés ont été définis en INTERLIS. Ces exemples illustrent les possibilités offertes par INTERLIS pour la définition de `VIEWS`. Les `VIEWS` ont été définies pour les modèles de données suivants: Axis_LV95_V1_1, IVS_V2_1, Planungszonen_V1_1 et BaseModel_SectoralPlans_LV95_V1_4.

----
### Exemple MGDM #3bis

```interlis
INTERLIS 2.3;
MODEL Planungszonen_V1_1_d_B
AT "mailto:maxime.collombin@heig-vd.ch"
VERSION "2023-12-04" =
    IMPORTS Planungszonen_V1_1;
    TOPIC PZ_d EXTENDS Planungszonen_V1_1.Geobasisdaten =
      VIEW view_pz 
        PROJECTION OF TypPZ_Planungszone;
           =
        ATTRIBUTE
         wkb_geometry := TypPZ_Planungszone -> Planungszone -> Geometrie;
         publiziert_ab := TypPZ_Planungszone -> Planungszone -> publiziertAb;
         gueltig_bis := TypPZ_Planungszone -> Planungszone -> publiziertBis;
         rechtsstatus := TypPZ_Planungszone -> Planungszone -> Rechtsstatus;
         bemerkungen :=  TypPZ_Planungszone -> Planungszone -> Bemerkungen;
         code_typ := TypPZ_Planungszone -> TypPZ -> Code;
         bezeichnung_typ := TypPZ_Planungszone -> TypPZ -> Bezeichnung;
         abkuerzung_typ := TypPZ_Planungszone -> TypPZ -> Abkuerzung;
         festlegung_stufe_typ := TypPZ_Planungszone -> TypPZ -> Festlegung_Stufe;
         bemerkung_typ := TypPZ_Planungszone -> TypPZ -> Bemerkungen;
      END view_pz;
    END PZ_d;
END Planungszonen_V1_1_d_B.
```

Note: Les exemples de `VIEWS` pour les modèles de données sélectionnés ont été définis en INTERLIS. Ces exemples illustrent les possibilités offertes par INTERLIS pour la définition de `VIEWS`. Les `VIEWS` ont été définies pour les modèles de données suivants: Axis_LV95_V1_1, IVS_V2_1, Planungszonen_V1_1 et BaseModel_SectoralPlans_LV95_V1_4.

----
### Exemple MGDM #4

```interlis
INTERLIS 2.3;
MODEL BaseModel_SectoralPlans_LV95_V1_4_d
AT "mailto:maxime.collombin@heig-vd.ch"
VERSION "2023-12-17" =
    IMPORTS BaseModel_SectoralPlans_LV95_V1_4, BaseModel_SectoralPlans_Catalogues_V1_4;
        TOPIC SPRI_d =
        DEPENDS ON BaseModel_SectoralPlans_Catalogues_V1_4.Catalogue_FacilityStatus;
        DEPENDS ON BaseModel_SectoralPlans_LV95_V1_4.SectoralPlans_WithLatestModification;
        DEPENDS ON BaseModel_SectoralPlans_Catalogues_V1_4.Catalogue_FacilityKind;
            VIEW view_sri
                JOIN OF 
                    BaseModel_SectoralPlans_LV95_V1_4.SectoralPlans_WithLatestModification.Facility,
                    BaseModel_SectoralPlans_Catalogues_V1_4.Catalogue_FacilityStatus.FacilityStatus,
                    BaseModel_SectoralPlans_Catalogues_V1_4.Catalogue_FacilityKind.FacilityKind,
                    BaseModel_SectoralPlans_LV95_V1_4.SectoralPlans_WithLatestModification.Object,
                    BaseModel_SectoralPlans_LV95_V1_4.SectoralPlans_WithLatestModification.Document;
                WHERE
                    Facility->Object == Object
                    AND
                    Document->Object == Object;
                    =
                ATTRIBUTE
                wkb_geometry := Facility -> Point;
                !! wkb_geometry := Facility -> Line;           !! other option for the geometry 
                !! wkb_geometry := Facility -> Surface;        !! other option for the geometry 
                facname := Facility -> Name;
                facstatus_tid := FacilityStatus -> StatusID;
                facstatus_text := FacilityStatus -> Name;
                fackind_tid := FacilityKind -> KindID;
                fackind_text := FacilityKind -> Name;
                description := Facility -> Description;        !! this attribute is ambiguous
                objname := Object -> Name;
                validfrom := Document -> ModInfo;              !! this attribute is ambiguous; only the attribute validfrom is needed; this definition is proably wrong
                doc_title := Document -> Title;
                doc_web := Document -> Web;
            END view_sri;
        END SPRI_d; 
END BaseModel_SectoralPlans_LV95_V1_4_d.
```

Note: Les exemples de `VIEWS` pour les modèles de données sélectionnés ont été définis en INTERLIS. Ces exemples illustrent les possibilités offertes par INTERLIS pour la définition de `VIEWS`. Les `VIEWS` ont été définies pour les modèles de données suivants: Axis_LV95_V1_1, IVS_V2_1, Planungszonen_V1_1 et BaseModel_SectoralPlans_LV95_V1_4.

----
### Modèles de représentation

- Définition de StandardSigns de base

Note: A des fins d'apprentissage et de dissémination des connaissances acquises, les SymbolSign les plus courants ont été définis. Il s'agit notamment de `PolylineSign`, `SymbolSign`, `SurfaceSign` et `TextSign`. Associé à cela, des modèles et signatures graphiques supplémentaires ont été définis afin de pouvoir éprouver les capactiés de représentation graphique d'INTERLIS. Il s'agit de notamment de Casing & Centerline, du StartSymbol d'un PolylineSign, de PatternStroke et finalement de Hatching. 

----
### Modèles de représentation

- StandardSymbology -> INTERLIS 2.4
  - Problèmes de compatibilité
  - 2/4 modèle graphique
- 0 modèle graphique

Note: Afin de pouvoir définir des modèles graphiques, il est nécessaire de mettre à niveau les modèles de bases vers INTERLIS 2.4 car le modèle StandardSymbology est défini en INTERLIS 2.4. Cela n'a pu être réalisé que pour 2/4 modèles, les autres nécessitant trop d'adaptations au niveau de leur dépendances pour ne pas rencontrer d'erreurs de validation. Finalement, aucun modèle graphique n'a pu être défini.

----
### Modèles de représentation

- `SurfaceBoundary_Graphics` != `VIEW`
- Selector & datatype

Note: `SurfaceBoundary_Graphics` n'est pas utilisable si la géométrie de la surface concernée intervient dans une `VIEW` car cette dernière n'est ainsi plus décomposable. Les valeurs de paramètres sont limitées pour les sélecteurs dans le modèle graphique. Elles ne peuvent correspondre qu'a des valeurs numériques ou des string basiques, sans espaces, ni accents, ni caractères spéciaux. Cela pose donc des contraintes pour le modèle de données comme par exemple les modèles du fichier [IVS_V3_gm.ili](https://github.com/MediaComem/FGDM4GS/tree/main/WP2-WP3/model/IVS_V2_1/IVS_V2_1/IVS_V3_gm.ili) ((`WHERE ivs_signatur_label == #Nationale Bedeutung, historischer Verlauf mit viel Substanz`)).

----
### Premières conclusions

- Aucune `VIEWS` dans les MGDM
- Utilisation de modèles dérivés
- `VIEWS` non prise en charge par ili2db
- `PROJECTION OF` <Association>
    - pas de clause `WHERE`
    - limitation à une seule Association
- `JOIN OF` & `WHERE`

Note: Aucune `VIEWS` n'a pu être trouvée dans les MGDM. Nous recommendons la création de modèles dérivés pour la définition de `VIEWS` à des fins de publication de géoservices, ce, afin de ne pas altérer les modèles de bases. La méthode la plus simple est la vue projection (mot-clé PROJECTION OF) sur la base d’une association. Elle est cependant limitée à une association. La vue join (mot-clé JOIN OF) associée à la clause where (mot-clé WHERE) est une alternative pour les cas plus complexes. Il serait important que ili2db prenne en charge les `VIEWS` pour faciliter la publication de géoservices.

----
### Modèles de représentation

- Comparaison des modèles conceptuels
- Correspondance INTERLIS, OGC [SLD/SE](https://www.ogc.org/standard/se/), [SymCore](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html)

![Comparaison des concepts de représentation](assets/PortrayalConceptComparison.png)

Note: INTERLIS définit un modèle graphique (`.ili`) et une signature graphique (`.xtf`). La signature graphique (`.ili`) est liée au modèle graphique (`.xtf`) lui même lié au Modèle de données. L'association du modèle graphique, des signatures graphiques et des données permettent le rendu cartographique. Le standard OGC SLD/SE définit deux types de styles cartographiques: `FeatureTypeStyle` et `CoverageStyle`. Le `FeatureTypeStyle` est utilisé pour définir le style d'une couche vecteur tandis que le `CoverageStyle` est utilisé pour définir le style d'une couche raster. La représentation Raster n'étant pour l'heure pas prise en charge par INTERLIS, nous nous intéressons en 1er lieu au `FeatureTypeStyle`. L'association d'un `FeatureTypeStyle` à des données permet le rendu cartographique.

----
### INTERLIS vs. SLD/SE & SymCore

| INTERLIS | SLD/SE  | SymCore |
| -------- | ------- | ------- |
| Modèle Graphique | `<Rule><Filter>` | Selector |
| Signature Graphique | `FeatureTypeStyle` | `Symbolizer` |

Note: Dans le contexte d'INTERLIS, la signature graphique (`.xtf`) est composée de 0 à n symboles de type ligne (`PolylineSign`), point (`SymbolSign`), surface (`SurfaceSign`) ou texte (`TextSign`).  Dans le contexte d'OGC SLD/SE Un `FeatureTypeStyle` est composé d'une ou de plusieures règles (`Rule`) elles-mêmes composés de 0 à n filtres (`Filter`) et de 0 à n symboliseurs (`Symbolizer`). Les symboliseurs peuvent être de type Ligne (`LineSymbolizer`), Point (`PointSymbolizer`), Polygon (`PolygonSymbolizer`) ou Texte (`TextSymbolizer`). Le représentation graphique INTERLIS diffère en ce sens de SLD/SE en ce sens que les symboles sont définis dans la signature graphique (`.xtf`). Le modèle graphique (*.ili) est à associer à une règle  (`<Rule>`) et son filtre (`<Filter>`) dans SLD/SE ou à un sélecteur (Selector) dans SymCore. La signature graphique (`.xtf`) peut être déclinée en plusieurs `FontSymbol` à savoir `PolylineSign`, `SymbolSign`, `SurfaceSign` et `TextSign` correspondant respectivement à `LineSymbolizer`, `PointSymbolizer`, `PolygonSymbolizer` et `TextSymbolizer` dans SLD/SE. La représentation Raster n'étant pour l'heure pas prise en charge par INTERLIS, nous nous intéressons en 1er lieu au `FeatureTypeStyle`.

----
### FontSymbol

- Glyphe (UCS4) & Geometry
- ~~ExternalGraphic~~

```interlis
CLASS FontSymbol =
  !! All font symbols are defined for size 1.0 and scale 1.0.
  !! The value is measured in user units (i.e. normally [m]).
  Name        : TEXT*40; !! Symbol name, if known
  UCS4        : 0 .. 4000000000; !! only for text symbols (characters)
  Spacing     : SS_Float; !! only for text symbols (characters)
  Geometry    : LIST OF FontSymbol_Geometry
                RESTRICTION (FontSymbol_Polyline; FontSymbol_Surface);
END FontSymbol;
```

Note: Dans le modèle StandardSymbology, les symboles peuvent être définis soit relativement à une Font (glyphe), soit en décrivant leur géométrie dans la Signature graphique (fichier *.xtf). Le recours a un graphique externe (ExternalGraphic) n'est, en revanche, pas possible. Afin de pouvoir utiliser les Fonts [Cadastra](https://www.cadastre.ch/fr/manual-av/service/cadastral-map.html), il est nécessaire de convertir les codes des symboles unicode pouvant être visualisés avec [FontDrop](https://fontdrop.info/) en base 10. Cela peut être réalisé avec des outils en ligne tels que [RapidTables](https://www.rapidtables.com/convert/number/hex-to-decimal.html). Il est possible de créer une Font à partir de symboles `*.svg` avec [Fontello - icon fonts generator](https://fontello.com/).

----
### PolyligneSign

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- File Surface_Graphics_Signatures.xtf 2024-03-22 -->

<ili:transfer xmlns:ili="http://www.interlis.ch/xtf/2.4/INTERLIS"
  xmlns:geom="http://www.interlis.ch/geometry/1.0"
  xmlns="http://www.interlis.ch/xtf/2.4/StandardSymbology"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <ili:headersection>
      <ili:models>
         <ili:model>Polyline_Graphics</ili:model>
      </ili:models>
      <ili:sender>HEIG-VD</ili:sender>
      <ili:comment>Basic example of Polyline_Graphics Signatures</ili:comment>
   </ili:headersection>
   <ili:datasection>
      <StandardSigns ili:bid="REFHANDB00000002">
         <!-- Color Library -->
         <Color ili:tid="1">
            <Name>white</Name>
            <L>100.0</L>
            <C>0.0</C>
            <H>0.0</H>
            <T>1.0</T>
         </Color>
         <Color ili:tid="2">
            <Name>black</Name>
            <L>0.0</L>
            <C>0.0</C>
            <H>0.0</H>
            <T>1.0</T>
         </Color>
         <!-- Internal Symbol Font "Symbols" -->
         <!-- This Font is only required if a LineStyle_Pattern is defined -->
         <Font ili:tid="10">
            <Name>Symbols</Name>
            <Internal>true</Internal>
            <Type>symbol</Type>
         </Font>
         <!-- Internal FontSymbols -->
         <!-- This FontSymbol is only required if a LineStyle_Pattern is defined -->
         <!-- It is also possible to define a Pattern_Symbol with an external Font -->
         <!-- Star -->
         <!-- Note that this symbol could be made more complex -->
         <FontSymbol ili:tid="104">
         <Name>Star</Name>
         <Geometry>
            <FontSymbol_Surface>
               <Geometry>
               <geom:surface>
                  <geom:exterior>
                     <geom:polyline>
                     <geom:coord>
                        <geom:c1>-4.0</geom:c1><geom:c2>0.0</geom:c2>
                     </geom:coord>
                     <geom:coord>
                        <geom:c1>-1.0</geom:c1><geom:c2>-1.0</geom:c2>
                     </geom:coord>
                     <geom:coord>
                        <geom:c1>0.0</geom:c1><geom:c2>-4.0</geom:c2>
                     </geom:coord>
                     <geom:coord>
                        <geom:c1>1.0</geom:c1><geom:c2>-1.0</geom:c2>
                     </geom:coord>
                     <geom:coord>
                        <geom:c1>4.0</geom:c1><geom:c2>0.0</geom:c2>
                     </geom:coord>
                     <geom:coord>
                        <geom:c1>1.0</geom:c1><geom:c2>1.0</geom:c2>
                     </geom:coord>
                     <geom:coord>
                        <geom:c1>0.0</geom:c1><geom:c2>4.0</geom:c2>
                     </geom:coord>
                     <geom:coord>
                        <geom:c1>-1.0</geom:c1><geom:c2>1.0</geom:c2>
                     </geom:coord>
                     <geom:coord>
                        <geom:c1>-4.0</geom:c1><geom:c2>0.0</geom:c2>
                     </geom:coord>
                     </geom:polyline>
                  </geom:exterior>
               </geom:surface>
               </Geometry>
            </FontSymbol_Surface>
         </Geometry>
         <Geometry>
            <FontSymbol_Polyline>
               <Color ili:ref="2"></Color>
               <Geometry>
               <geom:polyline>
                  <geom:coord>
                     <geom:c1>-4.0</geom:c1><geom:c2>0.0</geom:c2>
                  </geom:coord>
                  <geom:coord>
                     <geom:c1>4.0</geom:c1><geom:c2>0.0</geom:c2>
                  </geom:coord>
               </geom:polyline>
               </Geometry>
            </FontSymbol_Polyline>
            <FontSymbol_Polyline>
               <Color ili:ref="2"></Color>
               <Geometry>
               <geom:polyline>
                  <geom:coord>
                     <geom:c1>0.0</geom:c1><geom:c2>-4.0</geom:c2>
                  </geom:coord>
                  <geom:coord>
                     <geom:c1>0.0</geom:c1><geom:c2>4.0</geom:c2>
                  </geom:coord>
               </geom:polyline>
               </Geometry>
            </FontSymbol_Polyline>
         </Geometry>
         <Font ili:ref="10"></Font>
         </FontSymbol>
         <!-- Polyline attributes -->
         <PolylineAttrs ili:tid="4001">
           <Width>0.01</Width>
           <!-- Join type -->
           <!-- Other possible values are: round, bevel -->
           <Join>miter</Join>
           <!-- Note: MiterLimit is only avalaible for miter join type -->
           <MiterLimit>10.0</MiterLimit>
            <!-- Cap type -->
            <!-- Other possible value: round -->
           <Caps>butt</Caps>
         </PolylineAttrs>
         <!-- Line Styles -->
         <!-- Continuous -->
         <LineStyle_Solid ili:tid="21">
            <Name>LineSolid_01</Name>
            <Color ili:ref="2"></Color>
            <LineAttrs ili:ref="4001"></LineAttrs>
         </LineStyle_Solid>
         <!-- Dashed -->
         <LineStyle_Dashed ili:tid="22">
            <Name>LineDashed_01</Name>
            <Dashes>
              <DashRec>
                <DLength>0.1</DLength>
              </DashRec>
            </Dashes>
            <Dashes>
              <DashRec>
                <DLength>0.1</DLength>
              </DashRec>
            </Dashes>
            <Color ili:ref="2"></Color>
          </LineStyle_Dashed>
          <!-- Pattern Line Style -->
          <LineStyle_Pattern ili:tid="23">
            <Name>LinePattern_01</Name>
            <PLength>1</PLength>
            <Symbols>
               <Pattern_Symbol>
                  <!-- FontSymbRef, Dist & Offset are mandatory -->
                  <FontSymbRef ili:ref="104"></FontSymbRef>
                  <ColorRef ili:ref="2"></ColorRef>
                  <!-- Width for symbol lines -->
                  <Weight>1</Weight>
                  <Scale>1</Scale>
                  <!-- Distance along polyline -->
                  <Dist>0</Dist>
                  <!-- Vertical distance to polyline axis -->
                  <Offset>0</Offset>
               </Pattern_Symbol>
            </Symbols>
         </LineStyle_Pattern>
         <!-- Polyline Signs -->
         <PolylineSign ili:tid="3001">
            <ili:Name>continuous</ili:Name>
            <Style ili:ref="21">
              <PolylineSignLineStyleAssoc>
                <Offset>0.0</Offset>
              </PolylineSignLineStyleAssoc>
            </Style>
         </PolylineSign>
      </StandardSigns>
   </ili:datasection>
</ili:transfer>
```

Note: La classe `PolylineSign` permet de définir des styles de lignes. Dans l'exemple ci-dessus, un style de ligne continue (`LineStyle_Solid`), un style de ligne en pointillé (`LineStyle_Dashed`) et un style de ligne en pointillé avec un motif (`LineStyle_Pattern`) sont définis. Le motif (`Pattern_Symbol`) est défini par des références à un symbole (`FontSymbol`), à une couleur (`ColorRef`), de même que par les attributs Weight, Scale, Dist et Offset. `Weight` correspond à l'épaisseur de la ligne, `Scale` à l'échelle du symbole, `Dist` à la distance le long de la polyligne et `Offset` à la distance verticale par rapport à l'axe de la polyligne.

----
### PolylineSign

- SLD/SE
  - LineSymbolizer
- SymCore
  - [Basic Vector Features Styling](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc23)
  - [Requirements Classes for Advanced strokes](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc38)

Note: La classe `PolylineSign` correspond à un `LineSymbolizer` dans SLD/SE et aux classes d'exigences [8. Requirements Class “Basic Vector Features Styling”](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc23) et [13.  Requirements Classes for Advanced strokes](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc38) dans SymCore.

----
### PolylineSign

- Casing & Centerline or Cased lines (> 1 Basket ~ Symbolizer)
- ~~Label le long d'une ligne~~

Note: Les Cased Lines ou encore Casing and Centerline peuvent être représentées en utilisant plusieurs Baskets et StandardSigns successifs (correspondant à des symbolizers). Cela pourrait cependant être décrit de manière plus compact. Cette propriété fait également défaut dans SE. Bien que la possiblité n'existe pas non plus au niveau de SE, il n'est pas possible de définir un style pour un Label long d'une ligne qui suive son orientation.

----
### SymbolSign

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- File Point_Graphics_Signatures.xtf 2024-03-22 -->

<ili:transfer xmlns:ili="http://www.interlis.ch/xtf/2.4/INTERLIS"
  xmlns:geom="http://www.interlis.ch/geometry/1.0"
  xmlns="http://www.interlis.ch/xtf/2.4/StandardSymbology"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <ili:headersection>
      <ili:models>
         <ili:model>Point_Graphics</ili:model>
      </ili:models>
      <ili:sender>HEIG-VD</ili:sender>
      <ili:comment>Basic example of Point_Graphics Signatures</ili:comment>
   </ili:headersection>
   <ili:datasection>
      <StandardSigns ili:bid="REFHANDB00000002">
         <!-- Color Library -->
         <Color ili:tid="1">
            <Name>white</Name>
            <L>100.0</L>
            <C>0.0</C>
            <H>0.0</H>
            <T>1.0</T>
         </Color>
         <Color ili:tid="2">
            <Name>black</Name>
            <L>0.0</L>
            <C>0.0</C>
            <H>0.0</H>
            <T>1.0</T>
         </Color>
         <!-- External Symbol Font "Symbols" -->
         <!-- The Font "CadastraSymbol-Regular"
         can be downloaded from the following link:
         https://www.cadastre.ch/fr/manual-av/service/cadastral-map.html -->
         <!-- It may also be necessary to convert unicodes from base 16 to base 10.
         The following resource may be useful for achieving this:
         https://www.rapidtables.com/convert/number/hex-to-decimal.html -->
         <Font ili:tid="301">
            <Name>CadastraSymbol-Regular</Name>
            <Internal>false</Internal>
            <Type>text</Type>
         </Font>
         <Font ili:tid="302">
            <Name>CadastraSymbol-Mask</Name>
            <Internal>false</Internal>
            <Type>text</Type>
         </Font>
         <!-- FontSymbol Library-->
         <!-- External symbols -->
         <!-- Tree -->
         <FontSymbol ili:tid="201">
            <Name>Tree</Name>            
            <UCS4>0077</UCS4>
            <Font ili:ref="301"></Font>
         </FontSymbol>
         <!-- Tree Clip -->
         <FontSymbol ili:tid="202">
            <Name>TreeClip</Name>            
            <UCS4>111</UCS4>
            <Font ili:ref="302"></Font>
         </FontSymbol>
         <!-- Symbol Signs -->
         <SymbolSign ili:tid="2001">
            <ili:Name>Symbol</ili:Name>
            <Scale>1.0</Scale>
            <!-- Rotation is optional -->
            <Rotation>0</Rotation>
            <Color ili:ref="2"></Color>
            <Symbol ili:ref="201"></Symbol>
            <!-- ClipSymbol should only be used if a mask is needed -->
            <ClipSymbol ili:ref="202"></ClipSymbol>
         </SymbolSign>
      </StandardSigns>
   </ili:datasection>
</ili:transfer>
```

Note: Pour définir des implantations ponctuelles, INTERLIS définit la classe `SymbolSign` qui comporte les attributs `Name`, `Scale`, `Rotation`, `Color`, `Symbol` et `ClipSymbol`  ainsi que les attributs `Geometry` et `Priority` (obligatoire) dans le modèle graphique. Le symbole est décrit dans la classe `FontSymbol` comme nous l'avons vu plus haut. Le paramètre `ClipSymbol` permet de définir un masque pour le symbole. Pour ce qui est des autres attributs, ils ont déjà été définis dans les autre signatures graphiques (`Sign`).

----
### SymbolSign

- ClipSymbol?
- [Point_Graphics_Signatures.xtf](https://github.com/MediaComem/FGDM4GS/blob/main/WP2-WP3/model/symbology/Point_Graphics_Signatures.xtf#L73)

Note: Vérifier sir le ClipSymbol est correctement utilisé dans l'exemple ci-dessus.

----
### SymbolSign

- SLD/SE
  - PointSymbolizer
- SymCore
  - [Basic Vector Features Styling](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc23)
  - [Requirements Classes for Shapes](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc32)

Note: La classe `SymbolSign` correspond à un `PointSymbolizer` dans SLD/SE et aux classes d'exigences [8. Requirements Class “Basic Vector Features Styling”](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc23) et [11.  Requirements Classes for Shapes](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc32) dans SymCore.

----
### SurfaceSign

- SLD/SE
  - PolygonSymbolizer
- SymCore
  - [Basic Vector Features Styling](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc23)
  - [Requirements Classes for Advanced fills](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc43)

Note: La classe `SurfaceSign` correspond à un `PolygonSymbolizer` dans SLD/SE et aux classes d'exigences [8. Requirements Class “Basic Vector Features Styling”](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc23) et [14. Requirements Classes for Advanced fills](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc43) dans SymCore.

----
### SurfaceSign

- ~~Surface_Boundary~~
- ~~Pattern Fill~~
- Clip ?
- HatchOrg ?

Note: Au niveau de la `STRUCTURE` `FontSymbol_Surface`, il est fait mention de la remarque suivante: "Has no line symbology, because the boundary is *not* part of the surface" qui n'est pas opprtun, car cela nécessite de décomposer la géométrie d'un surface si on veut pouvoir représenter une `Surface_Boundary`, ce qui n'est, du reste, pas possible si on souhaite y accéder dans le cas d'une `VIEW` (voir exemple Planungszonen_V2_gm.ili). Le modèle StandardSymbology devrait donc être adapté pour associer/inclure `Surface_Boundary` à la classe `SurfaceSign`. Le modèle StandardSymbology ne semble pas non plus prendre en charge le remplissage avec  un Patern (motif). A quoi sert et comment utiliser l'attribut `Clip` (inside, outside) du modèle StandardSymbology? Le paramètre HatchOrg ne semble pas pouvoir être utilisé correctement.
----
### TextSign

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- File Text_Graphics_Signatures.xtf 2024-03-22 -->

<ili:transfer xmlns:ili="http://www.interlis.ch/xtf/2.4/INTERLIS"
  xmlns:geom="http://www.interlis.ch/geometry/1.0"
  xmlns="http://www.interlis.ch/xtf/2.4/StandardSymbology"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <ili:headersection>
      <ili:models>
         <ili:model>Text_Graphics</ili:model>
      </ili:models>
      <ili:sender>HEIG-VD</ili:sender>
      <ili:comment>Basic example of Text_Graphics Signatures</ili:comment>
   </ili:headersection>
   <ili:datasection>
      <StandardSigns ili:bid="REFHANDB00000002">
         <!-- Color Library -->
         <Color ili:tid="1">
            <Name>white</Name>
            <L>100.0</L>
            <C>0.0</C>
            <H>0.0</H>
            <T>1.0</T>
         </Color>
         <Color ili:tid="2">
            <Name>black</Name>
            <L>0.0</L>
            <C>0.0</C>
            <H>0.0</H>
            <T>1.0</T>
         </Color>
         <!-- External Text Font "Leroy" -->
         <Font ili:tid="11">
            <Name>Leroy</Name>
            <Internal>false</Internal>
            <Type>text</Type>
            <BottomBase>0.3</BottomBase>
         </Font>
         <!-- Text Sign -->
         <TextSign ili:tid="1001">
            <ili:Name>Linefont_18</ili:Name>
            <Height>1.8</Height>
            <Weight>0.18</Weight>
            <Slanted>false</Slanted>
            <Underlined>false</Underlined>
            <Striked>false</Striked>
            <ClipBox>0.0</ClipBox>
            <Font ili:ref="11"></Font>
            <Color ili:ref="2"></Color>
         </TextSign>
      </StandardSigns>
   </ili:datasection>
</ili:transfer>
```

Note: Pour définir des implantations de type texte, INTERLIS définit la classe `TextSign` qui comporte les attributs `Name`, `Height`, `Weight`, `Slanted`, `Underlined`, `Striked`, `ClipBox`, `Font` et `Color` ainsi que les attributs `Geometry`, `Rotation` et `Priority` (obligatoire) dans le modèle graphique. Les paramètres `Height`, `Weight`, `Slanted`, `Underlined` et `Striked` permettent de définir la taille, le poids, l'inclinaison, le soulignement et le barré du texte. Le paramètre `ClipBox` permet de définir une boîte de délimitation pour le texte. Pour ce qui est des autres attributs, ils ont déjà été définis dans les autre signatures graphiques (`Sign`). Le recours à l'attribut `Spacing` défini dans la classe `FontSymbol` ne semble pas possible alors qu'il semble dédié avec des symboles de type texte tel que défini dans le modèle StandardSymbology (cf remarque "!! only for text symbols (characters)"). Une association manque-t-elle dans le modèle entre TextSign et FontSymbol?

----
### TextSign

- `Spacing` (TextSignSymbolAssoc)?
- `Padding` en lieu et place de `BottomBase`?
- `ClipBox` (~~Color~~,~~Width~~,~~Cap~~,~~DashRec~~)

```interlis
ASSOCIATION TextSignSymbolAssoc =
  Symbol2 -- {1} FontSymbol;
  TextSign -- {0..*} TextSign;
END SymbolSignSymbolAssoc;
```

Note: Il semble manquer une association pour pouvoir utiliser le `Spacing` avec un `TextSign`. La définition de cette association est définie ci-dessus.
Il ne semble pas possible d'agir directement sur le style de l'encadré autour du texte `ClipBox`. LEs valeurs des paramètres liés au `TextSign` s'applique mais le `ClipBox` ne peut pas être rendu de manière indépendante (p.ex. encadré vert autour d'un texte en jaune), L'épaisseur ne peut non plus être modifiée autrement qu'en sollicitant une Font de type `Bold`. Aucune option ne semble non plus pour la terminaison et le traitillé.

----
### TextSign

- SLD/SE
  - TextSymbolizer
- SymCore
  - [Requirements Classes for Labeling](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc29)

Note: La classe `TextSign` correspond à un `TextSymbolizer` dans SLD/SE et à la classe d'exigences [10. Requirements Classes for Labeling](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc29) dans SymCore.

----
### Markers

- Mark ~ FontSymbol
- Mark
  - ExternalGraphic
  - WellKnownName (square, circle, triangle, star, cross, and x)
- FontSymbol
  - Geometry
  - TrueType Font (UCS4) ~ OnlineResource & MarkIndex

----
### Markers
#### INTERLIS

```xml
<Font ili:tid="301">
  <Name>CadastraSymbol-Regular</Name>
  <Internal>false</Internal>
  <Type>text</Type>
</Font>
<FontSymbol ili:tid="201">
  <Name>Tree</Name>            
  <UCS4>0077</UCS4>
  <Font ili:ref="301"></Font>
</FontSymbol>
```

----
### Markers
#### SE

```xml
<PointSymbolizer>
	<Graphic>
		<se:Mark>
			<se:OnlineResource xlink:type="simple" xlink:href="ttf://Dingbats"/>
			<se:Format>ttf</se:Format>
			<se:MarkIndex>10733</se:MarkIndex>
			<se:Fill>
				<se:SvgParameter name="fill">#ff0000</se:SvgParameter>
			</se:Fill>
		</se:Mark>
		<se:Size>29</se:Size>
	</Graphic>
</PointSymbolizer>
```

Note: En ce qui concerne les Markers, une `Mark` (SE) correspond à un `FontSymbol` (INTERLIS). Une `Mark` peut être défini par un `WellKnownName` (carré, cercle, triangle, étoile, croix et x) ou par un `ExternalGraphic`. Un `FontSymbol` peut être défini par une `Geometry` ou une `TrueType Font` (UCS4) également défini par SE comme combinaison de `OnlineResource` et `MarkIndex`. (Une incertitude subsiste relativement à l'usage de <se:Mark> ou <se:ExternalGraphic> pour les Markers).

----
### Dst & VIEW

- Dst & VIEW

Note: Les VIEW sont également nécessaires dans le cadre des modèles de représentation car permettent car elles permettent d'associer des attributs intervenant dans plusieurs classes et donc non mobilisables pour l'application d'un style.

----
### Coverage styling

- non défini

Note: Aucune possibilité de représentation de Coverage ([Requirements Classes for Coverage styling](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc26) dans SymCore, `RasterSymbolizer` au niveau de SE) n'est définie dans le modèle StandardSymbology.

---
### Perspectives
#### Dénormalistion

- Automatisation de la création de `VIEWS`
- Pipeline de publication
  - POC [ldproxy](https://github.com/interactive-instruments/ldproxy)
  - [OGC API - Features - Part 5: Schemas](https://docs.ogc.org/DRAFTS/23-058.html)

Note: Dans le cas de modèles existants pour lesquels des géoservices ont pu être identifiés, il serait intéressant d'explorer la possibilité d'automatiser la création de `VIEWS`. Il serait également intéressant de voir comment les `VIEWS` pourraient être intégrées dans un pipeline de publication de géoservices. Un POC avec ldproxy pourrait être intéressant à cet égard. Il serait également intéressant de comparer les `VIEWS` avec les schémas obtenus à partir d'implémentations de la spécification OGC API - Features - Part 5: Schemas.

----
### Perspectives
#### Modèle de représentation

- Mapping INTERLIS, OGC SLD/SE & SymCore
- Style Editor (p.ex. [GeoStyler](https://geostyler.org/) ou ~ [pySLD](https://github.com/iamtekson/pySLD))
- Transcoding (p.ex. [GeoStyler](https://github.com/geostyler/geostyler) ou [bridge-style](https://github.com/GeoCat/bridge-style))
- INTERLIS <-> OGC SLD/SE & SymCore encodings
  - Modèle données, modèle & signature graphique

Note: Pour favoriser l'interopérabilité entre INTERLIS et les autres langages de description de styles cartographiques, il s'agit en premier lieu de créer un mapping entre INTERLIS, OGC SE & SymCore. Cela afin de pouvoir intégrer INTERLIS à un convertisseur de styles cartographiques (p.ex. GeoStyler, bridge-style) ou à un éditeur de style cartographique (p.ex. GeoStyler, ou à un équivalent de pySLD). Finalement, afin de pouvoir convertir des feuilles de style vers le modèle et la signature graphique INTERLIS, il semble nécessaire de devoir recourir au modèle de données INTERLIS associé.

----
### Questions ouvertes

- Clip (SurfaceSign)?
- Clip (SymbolSign) ?
- HatchOrg (SurfaceSign)?
- Spacing (TextSign)?
- CondSignParamAssignment & Logical-Expression

Note: Les symbolizers suivant n'ont pas pu être correctement compris/appliqués: Clip (SurfaceSign), Clip (SymbolSign), HatchOrg (SurfaceSign), Spacing (TextSign). Les options de filtre au niveau du selecteur semblent être très limités mais cela doit pouvoir être confirmé par les participant.e.s au workshop. Ces questions ont été communiquées sur le forum Discourse INTERLIS (cf [lien]()).

---
### Recommendations
#### Généralités

- INTERLIS 2.4 & 2.3
- StandardSymbology (2.4)

Note: Veiller à mettre à jour les modèles INTERLIS 2.3 vers la version 2.4 pour garantir le fonctionnement avec le modèle StandardSymbology.

----
### Recommendations
#### Dénormalisation

- Création de modèles dérivés
- `PROJECTION OF` <Association>
- `JOIN OF` & `WHERE`
- Prise en charge des `VIEWS` par ili2db

Note: Nous recommandons la création de modèles dérivés pour la définition de `VIEWS` à des fins de publication de géoservices, ce, afin de ne pas altérer les modèles de bases. La méthode la plus simple est la vue projection (mot-clé PROJECTION OF) sur la base d’une association. Elle est cependant limitée à une association. La vue join (mot-clé JOIN OF) associée à la clause where (mot-clé WHERE) est une alternative pour les cas plus complexes. Il serait important que ili2db prenne en charge les `VIEWS` pour faciliter la publication de géoservices.

----
### Recommendations
#### StandardSymbology

- AbstractSymbology
- ExternalGraphic

Note: Le modèle AbstractSymbology pourrait potentiellement être intégré dans le modèle StandardSymbology selon M. Baertschi (à éprouver). Le modèle StandardSymbology pourrait également être étendu pour prendre en charge les graphiques externes (ExternalGraphic).

----
### Recommendations
#### Dénormalisation

- Modifier le code source de [ili2db](https://github.com/claeis/ili2db) pour la prise en charge des `VIEWS`
- [Python Bindings für INTERLIS](https://interlis.discourse.group/t/python-bindings-fuer-interlis/203)
    - Prise en charge des `VIEWS`

Note: Il serait intéressant de modifier le code source de ili2db pour la prise en charge des `VIEWS`. Si un python binding pour INTERLIS devait être développé (cf [discussion](https://interlis.discourse.group/t/python-bindings-fuer-interlis/203)), il serait intéressant de voir si les `VIEWS` pourraient être prises en charge. La ressource [pg2ili](https://github.com/gacarrillor/pg2ili) pourrait également être intéressante à explorer.

----
### Recommendations
#### Grammaire (E)BNF

- [#6 Grammar file for download](https://github.com/geostandards-ch/doc_refhb24/issues/6)  

Note: Dans une perspective de validation et d'évolution, il serait important que la grammaire (E)BNF d'INTERLIS soit disponible en téléchargement indépendemment du standard ecH-0031.

----
### Recommendations
#### Inventaires des MGDM

- Intégrer des liens entre les différentes ressources (modèles, geobasisdaten.ch, geocat.ch, WMS, WFS etc.)
- Modèles
  - Classes (cf [OeREBKRMtrsfr_V2_0](https://models.geo.admin.ch/V_D/OeREB/OeREBKRMtrsfr_V2_0.ili))?
  - Méta-attributs?
- Màj geobasisdaten.ch liens geocat.ch [type='model'](https://www.geocat.ch/geonetwork/srv/fre/csw?service=CSW&version=2.0.2&request=GetRecords&resultType=results&constraintLanguage=CQL_TEXT&constraint=dc:type='model'&constraint_language_version=1.1.0&typeNames=csw:Record)
- Liens entres `dc:type` de geocat.ch ([model](https://www.geocat.ch/geonetwork/srv/fre/csw?service=CSW&version=2.0.2&request=GetRecords&resultType=results&constraintLanguage=CQL_TEXT&constraint=dc:type='model'&constraint_language_version=1.1.0&typeNames=csw:Record), [service](https://www.geocat.ch/geonetwork/srv/fre/csw?service=CSW&version=2.0.2&request=GetRecords&resultType=results&constraintLanguage=CQL_TEXT&constraint=dc:type='service'&constraint_language_version=1.1.0&typeNames=csw:Record), [dataset](https://www.geocat.ch/geonetwork/srv/fre/csw?service=CSW&version=2.0.2&request=GetRecords&resultType=results&constraintLanguage=CQL_TEXT&constraint=dc:type='dataset'&constraint_language_version=1.1.0&typeNames=csw:Record))

Note: Il serait intéressant d'intégrer des liens entre les différentes ressources (modèles, geobasisdaten.ch, geocat.ch, WMS, WFS etc.) pour faciliter la navigation entre ces ressources. Cela est tout particulièrement vrai pour geocat qui distingue les modèles de données des géoservices et des datasets pour lesquels il n'existe pas de lien interne. Concerant les liens dans les modèles, solliciter les participant.e.s au workshop afin de déterminer si la meilleure solution est de documenter les liens dans le modèle ou en tant que méta-attributs.

----
### Recommendations
#### Mise en réseau des ressources

![INDG Geocat](assets/INDG-Geocat.svg)

- [geocat.ch](https://www.geocat.ch/geonetwork/srv/eng/catalog.search#/home) `type='model'` & [geobasisdaten](https://geobasisdaten.ch) ➡ `type='service'`
- [geobasisdaten.ch](https://geobasisdaten.ch) ➡ [geocat.ch]((https://www.geocat.ch/geonetwork/srv/eng/catalog.search#/home)) `type='model'`

Note: Il serait intéressant de mettre en réseau les ressources INDG (geobasisdaten.ch, geocat.ch, WMS, WFS etc.) pour faciliter la navigation entre ces ressources. Cela est tout particulièrement vrai pour geocat.ch qui distingue les modèles de données des géoservices et des datasets pour lesquels il n'existe pas de lien interne. Une première étape consisterait à récuperer les références MGDM au niveau des enregistrements correspondants aux modèles sur geocat.ch. On obtiendrait ainsi une correspondance entre les modèles de données et les géoservices permettant d'ajouter des liens entre les deux ressources. Les liens pourraient finalement être mis à jour sur geobasisdaten.ch afin de référencer les modèles et non plus les services. Une démarche similaire pourrait être envisagée pour les autres ressources. Il est également à noter seuls le contexte des MGDM et de geobasisdaten.ch a été pris en compte. D'autres ressources tels que [models.geo.admin.ch](https://models.geo.admin.ch/) ou d'autres model repository pourraient également être pris en compte.

----
### Recommendations
#### Mise en réseau des ressources

- Font (p.ex. WESP Font)
- ExternalGraphic (OnlineResource)
- svg

Note: Si la représentation graphique utilise des ressources particulières pour un graphique, il serait bien que les Font puissent être accessibles en ligne (p.ex. WESP Font) et que les ExternalGraphic puissent être également disponibles via une opération GetStyles ou alors il conviendrait préférablement de privilégier des ressources de type svg.

----
### Recommendations
#### Mise en réseau des ressources

- Download-Dienst
- DarstellungsDienst (GetMap, GetLegendGraphic, GetStyles)
- [OeREB models](https://models.geo.admin.ch/V_D/OeREB/)
- Metadata (geocat.ch, geobasisdaten.ch) ?

Note: Afin de pouvoir mettre en réseau les ressources, il serait intéressant de décrire les ressources liées dans le modèle soit le service de téléchargement pour le modèle de données, le service de représentation avec toutes les opérations liées (GetMap, GetLegendGraphic, GetStyles) de même que les liens vers les métadonnées associées (geocat.ch, geobasisdaten.ch, ressources web de l'office concerné). Les modèles ili associés au [Modèle-cadre](https://backend.cadastre-manual.admin.ch/fileservice/sdweb-docs-prod-cadastremanch-files/files/2023/07/24/eca12a6a-5fee-4ac5-9c37-5b67ae6adeea.pdf) du cadastre RDPPF en offre un bel exemple.

----
### Recommendations
#### Collection(s) de Styles

![INDG Styles](assets/INDG-Styles.png)

- Publication de collection(s) de styles

Note: Il serait intéressant de publier des collections de styles afin de favoriser leur réutilisation ainsi que l'harmonisation des représentations cartographiques des géoservices publiés. Une implémentation de la spécification OGC API - Styles pourrait être envisagée à cet égard.