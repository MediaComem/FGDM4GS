# Exemples des autres types de définition de VIEW

## PROJECTION OF & JOIN OF

Les exemples se retrouvent dans les VIEW définies à partir des 4 modèles choisis.

## UNION OF

Un exemple se trouve dans le modèle [SIA405_Eaux_3D_2015_2_f-20211020.ili](https://405.sia.ch/models/2015/SIA405_Eaux_3D_2015_2_f-20211020.ili) aux lignes 196 à 222.

```interlis
VIEW Point_de_conduite
  UNION OF base1~SIA405_EAUX_3D_2015.SIA405_Eaux_3D.Organe_de_fermeture,
         base2~SIA405_EAUX_3D_2015.SIA405_Eaux_3D.Hydrant,
         base3~SIA405_EAUX_3D_2015.SIA405_Eaux_3D.Composant;
      =
  ATTRIBUTE
    OBJ_ID := base1 -> OBJ_ID;
    METAATTRIBUTS := base1-> METAATTRIBUTS;
    Genre : (  !! Affectation de l'attribut du genre possible uniquement via une fonction
          inconnu,
          organe_de_fermeture,
          borne_hydrant,
          hydrant_souterrain,
          bouche_arrosage,
          coude,  !! coude au lieu de Composant, si Composant.genre = piece_moulee.coude.horizontal our piece_moulee.coude.vertical (nouveau 17.11.2014)
          autre
    );
    SymboleOri :=base1-> SymboleOri;
    Determination_planimetrique :=base1-> Determination_planimetrique;
    Altitude :=base1-> Altitude;
    Determination_altimetrique :=base1-> Determination_altimetrique;
    Proprietaire :=base1-> Proprietaire;
    Altitude_capuchon := base1-> Altitude_capuchon;
    Epaisseur := base1-> Epaisseur;
    Cote_entree := base2->Cote_entree;  !! Extension 3D Hydrant
    Cote_sortie := base3->Cote_sortie;  !! Extension 3D Composant Courant
END Point_de_conduite;
```

## AGGREGATION OF


## INSPECTION OF

cf modèle [LWB_Nutzungsflaechen_V2_0.ili](https://models.geo.admin.ch/BLW/LWB_Nutzungsflaechen_V2_0.ili) l.167-175:

```interlis
VIEW InspectionOfProgramm
  INSPECTION OF LNF_Nutzung_Programm ~ LWB_Nutzungsflaechen_V2_0.Nutzung.LNF_Nutzung -> Programm; =
ATTRIBUTE
  ALL OF LNF_Nutzung_Programm;
  Bezugsjahr := PARENT->Bezugsjahr->Bezugsjahr;
    MANDATORY CONSTRAINT
        (NOT (DEFINED (LNF_Nutzung_Programm->Reference->Gueltig_Von)) OR LNF_Nutzung_Programm->Reference->Gueltig_Von <= Bezugsjahr)
        AND (NOT (DEFINED (LNF_Nutzung_Programm->Reference->Gueltig_Bis)) OR LNF_Nutzung_Programm->Reference->Gueltig_Bis >= Bezugsjahr);
END InspectionOfProgramm;
```
