# cc-chaos-infra

Terraform for the **CloudCap** chaos-env demo GCP project (`cc-chaos-fffbba`).

This repo is the **Infrastructure-as-Code source of truth** for the deployed cloud
resources. CloudCap governs the project **from the live cloud** — not by auditing this
code:

- **Read-only GCP scan** detects cost / security / IAM posture on the *live* resources
  (e.g. a bucket that is public **right now**). This catches drift and out-of-band
  ("ClickOps") changes that a code-only IaC scanner would never see.
- **Ownership resolution** maps each live cloud resource back to the Terraform address
  in this repo that manages it.
- **GitOps remediation** — when CloudCap finds a live misconfiguration whose owner is
  this repo, it opens a **Pull Request** here with the fix (e.g. removing a public
  `allUsers` IAM binding). A human reviews & merges.

> Demo repo. Resources are intentionally minimal.
