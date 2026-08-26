# Cloud SQL for the demo app.

resource "google_sql_database_instance" "app" {
  name                = "cc-app-sql"
  database_version    = "POSTGRES_15"
  region              = var.region
  deletion_protection = false

  settings {
    tier            = "db-custom-1-3840"
    disk_size       = 20
    disk_autoresize = true
  }
}

resource "google_sql_database" "app" {
  name     = "appdb"
  instance = google_sql_database_instance.app.name
}

# Application database user.
resource "google_sql_user" "app" {
  name     = "app_user"
  instance = google_sql_database_instance.app.name
  password = var.db_password
}
