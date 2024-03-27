# FGDM4GS

Dénormalisation de modèles de géodonnées pour la publication de géoservices.

## Installation de reveal-md

```bash
npm install -g reveal-md
```

## Visualisation des slides

```bash
reveal-md slides.md
```

## Génération des fichiers statiques pour le déploiement

```bash
reveal-md slides.md --static --static-dirs=assets && mv _static/ docs/
```

La présentation est disponible au format pdf en ajoutant `?view=print` à son url.