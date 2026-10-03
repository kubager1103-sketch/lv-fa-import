# LV-FA Import v1.19.0

- Added admin action **Smazat zásilku**.
- Deleting a shipment removes its database metadata and all non-archived files from the Import R2 temporary storage.
- Photos already archived to Google Drive are never deleted by this action.
- The delete action requires an explicit confirmation and is available from the shipment detail.
- If the deletion cannot be completed, the shipment remains in the admin so it can be retried.
