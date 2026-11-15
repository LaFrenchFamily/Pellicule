# Pellicule

Site pour garder ses films, séries et animés : recherche, fiche détaillée (affiche, bande-annonce, synopsis, casting, note), listes **Favoris** et **À voir**, et **Suggestions** basées sur les favoris.

Un seul fichier HTML, sans installation. Sans compte, les listes restent dans le navigateur. Avec un compte (e-mail et mot de passe, ou Google), elles sont enregistrées dans Supabase et synchronisées sur tous les appareils.

- `src/app.html` : le code source.
- `index.html` : la page publiée, générée par `TMDB_KEY=... ./build.sh`.

Données et images : [TMDB](https://www.themoviedb.org). Ce produit utilise l'API TMDB sans être approuvé ni certifié par TMDB.
