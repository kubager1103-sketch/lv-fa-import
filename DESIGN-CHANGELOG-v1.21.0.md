# LV-FA Import v1.21.0

- Fixed R2 presigned upload compatibility by no longer signing the PUT request to a fixed Content-Type.
- Added browser-side upload diagnostics in the console for submission creation, R2 PUT and completion failures.
- Updated confirmation email subject to `Potvrzení o přijetí fotografií / Photo Submission Confirmation`.
- Updated confirmation email body to the requested Czech + English copy.
- Added the existing LV-FA logo as an inline CID image at the end of both the Czech and English email sections.
- Added the supplied `terms-and-privacy.pdf` to the public app and linked it from the consent text.
- The linked legal phrase is bold and opens the supplied document in a new tab.
- Enlarged the mobile header logo.
- Made mobile language buttons square and made the Administration button a full-width bordered button matching the language bar width.
- Reworked the mobile admin login layout so the login is vertically centered and the footer remains at the bottom.
