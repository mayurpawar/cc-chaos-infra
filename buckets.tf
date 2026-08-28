# Object storage for the demo app.

resource "google_storage_bucket" "public_bucket" {
  name                        = "${var.project_id}-cc-public-bucket"
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true
}

# PUBLIC access — anyone on the internet can read this bucket's objects.
# CloudCap detects this from the LIVE cloud and opens a PR to remove it.
resource "google_storage_bucket_iam_member" "public_read" {
  bucket = google_storage_bucket.public_bucket.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
