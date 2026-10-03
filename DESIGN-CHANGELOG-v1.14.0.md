# LV-FA Import v1.14.0

## Google OAuth / admin login
- Added a clear login message when Google authentication succeeds but the selected Google account is not an allowed administrator.
- Admin `/api/auth/me` requests explicitly use same-origin credentials and `no-store` caching.
- Admin allow-list now supports optional `ADMIN_EMAILS` (comma-separated) for local testing; production remains configured with the existing `ADMIN_EMAIL` unless `ADMIN_EMAILS` is explicitly set.
- The default production admin remains `letecky.vykricnik@gmail.com`.
- This makes the common case visible instead of silently returning to the login screen at `/admin`.

## Favicon
- Replaced the Import favicon with the exact supplied LV-FA icon image.
- Applied the supplied icon to both public and admin pages, including the Apple touch icon.
