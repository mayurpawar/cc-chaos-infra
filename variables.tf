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
