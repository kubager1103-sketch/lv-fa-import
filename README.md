# LV-FA Import v1.21.0

Production target: `https://import.leteckyvykricnik.cz`

This version includes the R2 upload fix/diagnostics, updated bilingual confirmation email with inline logo, supplied privacy/terms PDF linked from the consent text, and mobile layout refinements.

## Required production settings

Keep the existing Cloudflare bindings and secrets. The Resend API key remains `RESEND_API_KEY`; sender remains `EMAIL_FROM = no-reply@leteckyvykricnik.cz`.

The supplied legal document is served at `/terms-and-privacy.pdf`.
