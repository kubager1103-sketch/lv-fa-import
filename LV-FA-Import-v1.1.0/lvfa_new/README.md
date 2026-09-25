# LV-FA Import v1.1

Externí příjem fotografií pro Letecký vykřičník & FlyAlert.

## Architektura
- Cloudflare Pages/Workers: veřejná stránka + `/admin` + API
- Cloudflare R2: dočasné uložení uploadů
- Cloudflare D1: zásilky, metadata, stavy a auditní údaje
- Google OAuth: přihlášení administrace
- Google Drive API přes service account: archivace schválených fotografií přímo do LV-FA Photos
- Resend: dvojjazyčné e-maily z `import@leteckyvykricnik.cz`

## Důležité
Photo Center se v této verzi **nemění** a není součástí deploymentu Importu.
Import používá stejná pravidla pro generování názvů jako současný Photo Center v10.9.2:
`fotograf_instagram_zdroj_aerolinka-letiště_typ-letadla.ext`, včetně kategoriových suffixů a číslování při kolizi.

Kategorie: Fotografie, Stories, Events, Soutěž.

Administrace je omezena na `letecky.vykricnik@gmail.com`.

## Lokální vývoj
```bash
npm install
npx wrangler d1 migrations apply lvfa_import --local
npx wrangler dev
```

## Produkce
Viz `DEPLOY-CHECKLIST.md`.
