# LV-FA Import v1.13.0

## Google OAuth local development fix
- Local OAuth now uses the current localhost origin for the callback instead of the production `PUBLIC_BASE_URL`.
- Local session cookies are not marked `Secure` when running over HTTP. Production remains `Secure`.
- Added a localhost-only development session secret fallback so Google login can be tested locally even if `SESSION_SECRET` is not present in `.dev.vars`. Production still requires `SESSION_SECRET`.
- Production OAuth behavior and the configured production base URL remain unchanged.

## Google Cloud setup
For local testing, the OAuth client must authorize the exact callback URI used by the local server, e.g. `http://localhost:8787/api/auth/google/callback`.
