#!/bin/sh
# Produit index.html (page autonome) à partir de src/app.html.
# Usage : TMDB_KEY=ta_cle ./build.sh   (sans clé : le site démarre en mode démo)
set -e
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="fr">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<style>[hidden]{display:none!important}body{margin:0}</style>\n'
  sed -e 's#^<header class="top">#</head>\n<body>\n<header class="top">#' \
      -e "s#const DEFAULT_TOKEN = \"\";#const DEFAULT_TOKEN = \"${TMDB_KEY:-}\";#" src/app.html
  printf '\n</body>\n</html>\n'; } > index.html
