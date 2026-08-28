# Object storage for the demo app.

resource "google_storage_bucket" "public_bucket" {
  name                        = "${var.project_id}-cc-public-bucket"
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true
}

