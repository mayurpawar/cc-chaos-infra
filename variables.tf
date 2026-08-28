variable "project_id" {
  description = "GCP project ID for the chaos-env demo."
  type        = string
  default     = "cc-chaos-fffbba"
}

variable "region" {
  description = "Default region."
  type        = string
  default     = "us-central1"
}

variable "db_password" {
  description = "Application database password (supplied via TF_VAR_db_password / secret manager)."
  type        = string
  sensitive   = true
}
