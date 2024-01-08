# Exemples des autres types de définition de VIEW

## PROJECTION OF & JOIN OF

Les exemples se retrouvent dans les VIEW définies à partir des 4 modèles choisis.

## UNION OF

Un exemple se trouve dans le modèle [view_AcceptBasicUnionDef.ili](https://github.com/claeis/ili2c/blob/c506ae466333d726b885ca7fae4ce6825e94176d/test/data/ili23/view/view_AcceptBasicUnionDef.ili).

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

## AGGREGATION OF

Un exemple se trouve dans le modèle [view_AcceptBasicAggregationDef.ili](https://github.com/claeis/ili2c/blob/c506ae466333d726b885ca7fae4ce6825e94176d/test/data/ili23/view/view_AcceptBasicAggregationDef.ili).

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

## INSPECTION OF

Un exemple se trouve dans le modèle [view_AcceptBasenameOfUnrenamedInspectionDef.ili](https://github.com/claeis/ili2c/blob/c506ae466333d726b885ca7fae4ce6825e94176d/test/data/ili23/view/view_AcceptBasenameOfUnrenamedInspectionDef.ili)

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
