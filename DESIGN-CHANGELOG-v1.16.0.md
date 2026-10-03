# LV-FA Import v1.16.0

- Fixed local Google OAuth session persistence by sending exactly one Set-Cookie header for the admin session from the OAuth callback.
- The OAuth state cookie is allowed to expire naturally instead of sending a second Set-Cookie header in the same response, avoiding local runtime/browser header handling issues.
- Added no-store to OAuth callback redirect response.
- Preserved the v1.14/v1.15 favicon and all existing UI changes.
