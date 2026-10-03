# Photo Center compatibility

Verified against the supplied `flyalert-photo-center-v10.9.2-ready(2).zip`.

Photo Center v10.9.2 uses:
1. photographer
2. Instagram
3. source
4. airline / airport
5. aircraft

Parts are cleaned by trimming, replacing `\\ / : * ? " < > |` with `-`, collapsing whitespace, removing trailing dots/spaces, and limiting each part to 120 characters.

LV-FA Import intentionally does NOT collect `source` and therefore generates:

`photographer_instagram_airline_aircraft_Import.ext`

with empty optional parts omitted. The original image extension is preserved when supported. If the same filename already exists in the destination folder, Import adds `_2`, `_3`, etc. before `_Import`.

Photo Center itself must not be modified.
