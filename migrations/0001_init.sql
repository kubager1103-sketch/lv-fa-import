CREATE TABLE IF NOT EXISTS submissions (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  language TEXT NOT NULL DEFAULT 'cs',
  note TEXT DEFAULT '',
  status TEXT NOT NULL DEFAULT 'UPLOADING',
  total_files INTEGER NOT NULL DEFAULT 0,
  approved_files INTEGER NOT NULL DEFAULT 0,
  rejected_files INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL,
  completed_at TEXT,
  review_started_at TEXT,
  archive_started_at TEXT,
  archive_completed_at TEXT,
  email_status TEXT NOT NULL DEFAULT 'PENDING',
  email_sent_at TEXT,
  email_error TEXT,
  admin_note TEXT DEFAULT ''
);

CREATE TABLE IF NOT EXISTS photos (
  id TEXT PRIMARY KEY,
  submission_id TEXT NOT NULL REFERENCES submissions(id) ON DELETE CASCADE,
  storage_key TEXT NOT NULL UNIQUE,
  original_name TEXT NOT NULL,
  mime_type TEXT NOT NULL,
  size_bytes INTEGER NOT NULL,
  status TEXT NOT NULL DEFAULT 'UPLOADING',
  photographer TEXT DEFAULT '',
  instagram TEXT DEFAULT '',
  source TEXT DEFAULT '',
  airline TEXT DEFAULT '',
  aircraft TEXT DEFAULT '',
  note TEXT DEFAULT '',
  category TEXT NOT NULL DEFAULT 'photos',
  review_note TEXT DEFAULT '',
  archive_id TEXT,
  archive_error TEXT,
  created_at TEXT NOT NULL,
  reviewed_at TEXT,
  archived_at TEXT
);
CREATE INDEX IF NOT EXISTS idx_submissions_status ON submissions(status);
CREATE INDEX IF NOT EXISTS idx_submissions_created_at ON submissions(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_photos_submission ON photos(submission_id);
CREATE INDEX IF NOT EXISTS idx_photos_status ON photos(status);
