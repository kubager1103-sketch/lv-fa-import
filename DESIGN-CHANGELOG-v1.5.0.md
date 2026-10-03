# LV-FA Import v1.5.0 — Design refinement

Implemented from the requested visual refinements:

- Public header keeps the centered desktop title `Import fotografií`; it is hidden on mobile.
- `Vyčistit` moved into the `Vaše údaje` panel header and aligned to the right.
- Public content title changed to `Vaše údaje`.
- Removed the extra `Fotografie` eyebrow and removed the divider under the panel heading.
- Upload heading is now simply `Nahrát fotografie`.
- Upload zone follows the Photo Center wording and behavior: the entire dashed area is clickable and accepts drag-and-drop; there is no nested file-selection button.
- Maximum individual photo size shown and enforced by the client is 10 MB.
- Photo cards use a left-side rounded image and right-side metadata, including on mobile.
- Desktop displays two photo cards per row; mobile displays one card per row.
- Admin header no longer uses the three-dot menu; `Veřejná část` is permanently visible on the right.
- Admin login body no longer shows `LV-FA Import` or the authorized email address.
- Admin login card border was removed; Google login button is larger and centered.
- Admin page uses flexible vertical spacing so the footer stays at the bottom on short screens.
- Admin footer text changed to `© Letecký vykřičník & FlyAlert - Import fotografií`.
