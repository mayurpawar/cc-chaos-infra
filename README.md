# cc-chaos-infra

Terraform for the **CloudCap** chaos-env demo GCP project (`cc-chaos-fffbba`).

This repo is governed live by CloudCap:
- **Read-only GCP scan** flags cost / security / IAM posture on the deployed resources.
- **IaC code scan** flags policy violations in this Terraform (e.g. hardcoded secrets).
- **GitOps remediation** — CloudCap opens a Pull Request with the fix; a human reviews & merges.

> Demo repo. Resources are intentionally minimal.
