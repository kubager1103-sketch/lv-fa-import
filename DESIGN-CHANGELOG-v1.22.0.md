# LV-FA Import v1.22.0

- Public photo upload no longer uses presigned R2 S3 URLs or R2 access-key environment variables.
- Browser uploads now go to the same-origin Worker endpoint, which writes directly through the `IMPORT_BUCKET` R2 binding. This removes the previous dependency on R2 S3 credentials and browser-side R2 CORS for uploads.
- Added detailed R2 upload error logging and HTTP error responses for diagnostics.
- Application title standardized to `LV-FA | Import`.
- Mobile header height restored to the previous compact size; only the logo size is adjusted.
- Mobile hamburger menu language controls are square buttons and Administration is a matching full-width button.
- Mobile admin empty-state helper sentence is hidden; only `KONTROLA` and `Vyber zásilku` remain.
- Legal-consent PDF link is no longer bold.
- English public footer uses `Import` to match the application name.
