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
  description = "Sensitive value. Provide via TF_VAR_db_password sourced from Secret Manager; never hardcode in the repo."
  type        = string
  sensitive   = true
}
