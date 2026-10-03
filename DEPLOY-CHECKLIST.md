# LV-FA Import – postup nasazení

## 1. Cloudflare
1. Přihlásit se do Cloudflare.
2. Přidat doménu `leteckyvykricnik.cz`, pokud tam ještě není.
3. Vytvořit R2 bucket `lv-fa-import`.
4. Vytvořit D1 databázi `lvfa_import`.
5. V repozitáři nastavit `database_id` ve `wrangler.toml`.
6. Spustit produkční migraci:
   `npx wrangler d1 migrations apply lvfa_import --remote`
7. Přidat Worker/Pages deployment podle `wrangler.toml`.
8. Připojit route `import.leteckyvykricnik.cz/*`.

## 2. R2
Vytvořit R2 API token s přístupem pouze k bucketu `lv-fa-import` a nastavit secrets:
- `R2_ACCOUNT_ID`
- `R2_ACCESS_KEY_ID`
- `R2_SECRET_ACCESS_KEY`
- `R2_S3_ENDPOINT`

## 3. Session
Vygenerovat dlouhý náhodný secret a uložit:
- `SESSION_SECRET`

## 4. Google OAuth pro /admin
V Google Cloud Console vytvořit OAuth Client typu Web application.
Authorized redirect URI:
`https://import.leteckyvykricnik.cz/api/auth/google/callback`

Secrets:
- `GOOGLE_CLIENT_ID`
- `GOOGLE_CLIENT_SECRET`

Administrace povolí pouze:
`letecky.vykricnik@gmail.com`

## 5. Google Drive archiv
1. V Google Cloud vytvořit service account.
2. Zapnout Google Drive API.
3. Vytvořit service-account credentials.
4. Sdílet hlavní složku LV-FA Photos se service-account e-mailem jako Editor.
5. Nastavit:
   - `GOOGLE_SERVICE_ACCOUNT_EMAIL`
   - `GOOGLE_SERVICE_ACCOUNT_PRIVATE_KEY`
6. Zkontrolovat `GOOGLE_DRIVE_FOLDER_ID` ve `wrangler.toml`.

Import vytváří/užívá podsložky `Stories`, `Events`, `Soutěž` stejně jako Photo Center. Běžné fotografie zůstávají v hlavní složce.

## 6. E-mail
1. V Resend přidat a ověřit doménu `leteckyvykricnik.cz`.
2. Nastavit odesílatele `import@leteckyvykricnik.cz`.
3. Přidat DNS záznamy podle Resendu.
4. Vytvořit API key.
5. Nastavit:
   - `RESEND_API_KEY`
   - `EMAIL_FROM=import@leteckyvykricnik.cz`

E-mail autorovi je vždy česky i anglicky.

## 7. DNS
Nastavit `import.leteckyvykricnik.cz` na Cloudflare Worker/Pages deployment podle způsobu nasazení.

## 8. První test
1. Otevřít veřejnou stránku.
2. Přepnout CZ/EN.
3. Nahrát 1–2 testovací fotografie.
4. Ověřit metadata u každé fotografie.
5. Přihlásit `/admin` přes `letecky.vykricnik@gmail.com`.
6. Upravit metadata.
7. Schválit jednu fotografii a druhou zamítnout.
8. Odeslat schválenou fotografii do archivu.
9. Ověřit název v Google Drive.
10. Ověřit dvojjazyčný e-mail.

## Poznámka k Photo Centeru
Photo Center se kvůli Importu nemusí měnit. Import zapisuje přímo do stejného Google Drive archivu a používá stejnou logiku názvů souborů.
