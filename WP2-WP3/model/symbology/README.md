# TODO

- [x] Télécharger tous les fichiers de https://models.interlis.ch/refhb24/
- Comprendre l'Annexe C (Information) Le petit exemple Roads de la page 105 du [manuel de référence](https://www.interlis.ch/download/interlis2/ili2-refman_2006-04-13_f.pdf)
- Comprendre le document [INTERLIS 2 Grafikmodellierung  
und Anforderungen der Kartografie](https://drive.switch.ch/index.php/apps/files/?dir=/mediamaps/01-Projets/02-En-cours/01-Flache-Geodatenmodelle/R%C3%A9f%C3%A9rences&fileid=6708009891#pdfviewer) et le mettre en relation avec les Darstellungsmodelle

## 1ères conclusions

- Le modèle graphique dépend du modèle de données (qui doit donc y être importé)
- Les valeurs d'attributs doivent être définis dans un fichier de transfert .xtf
- `ili2c` offre une option de conversion d'un modèle vers un fichier `.xtf` qui pourrait être utile dans le cadre de la description graphique