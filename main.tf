# cc-chaos-infra — Terraform for the CloudCap chaos-env demo project.
# Governed live by CloudCap (read-only GCP scan + GitOps PR remediation).

terraform {
  required_version = ">= 1.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}
