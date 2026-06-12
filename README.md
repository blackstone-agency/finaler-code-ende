# Blackstone Agency — Webseite (Finaler Code)

Statische, optimierte Webseite. Kein Build nötig — Vercel liefert die Dateien direkt aus.
Alle Dateien liegen absichtlich flach im Hauptordner, damit auch ein Upload per GitHub-Webseite (Drag & Drop) funktioniert.

## Struktur

| Datei | Zweck |
|---|---|
| `index.html` | Die komplette Webseite (Einstiegspunkt) |
| `app.js` | Vorkompilierte React-App (minifiziert, 93 KB) |
| `tailwind.css` | Statisches Tailwind-CSS (minifiziert, 19 KB) |
| `react.production.min.js`, `react-dom.production.min.js` | React 18.3.1 (selbst gehostet) |
| `vercel.json` | Vercel-Konfiguration (Caching + Security-Header) |
| `app.jsx` | Quellcode der App — hier Änderungen machen |
| `build.sh` | Baut nach Änderungen `app.js` + `tailwind.css` neu (`sh build.sh`) |
| `tailwind.config.static.js`, `tailwind-input.css` | Tailwind-Build-Konfiguration |

## Deployment

Verbunden mit Vercel: jeder Push auf `main` deployt automatisch.

```sh
git add -A
git commit -m "Update"
git push
```

## Änderungen machen

1. `app.jsx` bearbeiten (Inhalte/Komponenten) oder `index.html` (Texte im Datenblock, Meta-Tags).
2. `sh build.sh` ausführen (baut `app.js` + `tailwind.css` neu).
3. Committen + pushen (siehe oben).

**Wichtig:** Beim Hochladen über die GitHub-Webseite immer ALLE Dateien zusammen hochladen — dank flacher Struktur gehen dabei keine Pfade mehr kaputt.
