# Blackstone Agency — Webseite (Finaler Code)

Statische, optimierte Webseite. Kein Build nötig — Vercel liefert die Dateien direkt aus.

## Struktur

| Datei / Ordner | Zweck |
|---|---|
| `index.html` | Die komplette Webseite (Einstiegspunkt) |
| `assets/app.js` | Vorkompilierte React-App (minifiziert, 93 KB) |
| `assets/tailwind.css` | Statisches Tailwind-CSS (minifiziert, 19 KB) |
| `vendor/` | React 18.3.1 (selbst gehostet, kein CDN) |
| `vercel.json` | Vercel-Konfiguration (Caching + Security-Header) |
| `src/app.jsx` | Quellcode der App — hier Änderungen machen |
| `build.sh` | Baut nach Änderungen `assets/` neu (`sh build.sh`) |
| `tailwind.config.static.js` | Tailwind-Konfiguration für den Build |

## Online gehen (einmalig)

1. Auf GitHub ein neues Repository erstellen (z. B. `blackstone-website`), **ohne** README/Lizenz.
2. Im Terminal in diesem Ordner:

```sh
git remote add origin https://github.com/blackstone-agency/DEIN-REPO-NAME.git
git push -u origin main
```

3. Auf [vercel.com](https://vercel.com) → **Add New → Project** → das GitHub-Repo importieren → **Deploy** klicken. Fertig.

Ab dann gilt: **Jeder `git push` deployt automatisch die neue Version.**

## Änderungen machen

1. `src/app.jsx` bearbeiten (Inhalte/Komponenten) oder `index.html` (Texte im Datenblock, Meta-Tags).
2. `sh build.sh` ausführen (baut `assets/app.js` + `assets/tailwind.css` neu).
3. Committen + pushen:

```sh
git add -A
git commit -m "Update"
git push
```
