# Mapping INTERLIS Description graphique SLD/SE

## Classes principales

- Couleur: CLASS Color
- Attributs de la ligne: CLASS PolylineAttrs
- Symbole (signe réel): CLASS FontSymbol
- Écriture, texte ou symboles : CLASS Font
- Type de ligne : CLASS LineStyle

## Symboles de points (SymbolSign)

- Couleur, taille, orientation
- Clip pour libérer symbole

## Symboles de ligne (PolylineSign)

- LineStyle_Solid
- LineStyle_DashRec
- LineStylePattern

- largeur, couleur
- jointure: bevel, round, miter (line-join)
- terminaision: round, butt (line-cap)
- possiblité arrondir les angles cf name="stroke-linecap": https://docs.geoserver.org/main/en/user/styling/sld/reference/linesymbolizer.html

Les lignes peuvent également être dégagées à l'aide d'un clip correspondant


## Symboles de surface (SurfaceSign)

- espacement & orientation lignes symboles trame régulière (Pattern Fills (Hatch))
- GraphicFill apparement couvert cf https://docs.geoserver.geo-solutions.it/edu/en/pretty_maps/patterns_dash_arrays.html
- Dans le modèle StandardSymbology, il est mentionné qu'une surface ne peut avoir de ligne car la boundary ne fait pas partie de la surface (cf !! Remark: Has no line symbology, because the boundary is *not* part of the surface) ce qui implique de devoir décomposer la géométrie). Ce n'est pas idéal mais cela pourra être considéré en rapport avec les transformations géométriques dans le mapping SLD/SE, SymCore.

## Symboles de texte (TextSign)

- Height, Weight
- police italique (Slated), soulignée (Underlined) ou barrée (Striked).
- attribut Spacing peut être défini au niveau de FontSymbol
- Police Clip pour libérer caractère
- boîte a clips pour encadre texte
- alignement vertical et horizontal
- orientation
- BottomBase : décalage par rapport à la ligne de base cf Textsymbolizer (SLD/SE) <LabelPlacement>(<PointPlacement> | <LinePlacement>): https://docs.geoserver.org/main/en/user/styling/sld/reference/textsymbolizer.html

## Couleur

- système (colorspace) LCH + T

## Limitations

- Ligne double? cf Line with border : https://docs.geoserver.org/main/en/user/styling/sld/cookbook/lines.html

## Simplification

- ajouter classes modèle AbstractSymbology dans le modèle StandardSymbology (Baertschi)

## Autres

- UCS4 --> symbole de police
