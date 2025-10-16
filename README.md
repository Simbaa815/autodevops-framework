# AutoDevOps Framework 🚀
A **secure, automated DevOps framework** designed to enable continuous delivery, governance, and infrastructure continuity with minimal manual intervention.

---

## 🔹 Goals
- Fully automated CI/CD using GitHub Actions
- Secure secrets management (AWS Secrets Manager + GitHub OIDC)
- Zero manual deployments (“fire & forget” principle)
- Role-based governance and branch protection
- Reusable for any team or company

---

## 🧩 Project Phases
1. **Audit & Planning** – Understand current infrastructure, identify risks, and plan improvements.
2. **CI/CD Automation** – Configure GitHub Actions for auto-deployments to staging and production.
3. **Secrets Management** – Centralized, secure handling of secrets and environment variables.
4. **Infra Hardening** – AWS security, monitoring, backups, and cost optimization.
5. **Governance & Continuity** – Enforce code discipline, documentation, and knowledge continuity.

<!--
---

## 📂 Repository Structure

autodevops-framework/
├── docs/
│ ├── audit_summary.md # Consolidated audit summary
│ ├── github_audit.md # GitHub audit details
│ ├── aws_audit.md # AWS audit details
│ ├── mongodb_audit.md # MongoDB audit details
│ └── recommendations.md # Recommended improvements and next steps
├── scripts/
│ ├── audit_github.sh # Script to audit GitHub repo
│ ├── audit_aws.sh # Script to audit AWS setup
│ ├── audit_mongodb.sh # Script to audit MongoDB Atlas
│ └── generate_summary.sh # Script to generate consolidated audit summary
├── .github/
│ └── workflows/
│ └── run_audit.yml # GitHub Actions workflow to run audits
└── README.md
-->


---

## 📋 Phase 1: Audit & Planning

This repository contains the audit framework for **Phase 1: Audit & Planning**.

The goal is to **understand the current DevOps setup**, identify risks, and plan improvements before automating CI/CD, governance, and secrets management.

---

### 🛠 Usage

- **Run locally**:
```bash
bash scripts/audit_github.sh
bash scripts/audit_aws.sh
bash scripts/audit_mongodb.sh
bash scripts/generate_summary.sh
```

- **Run via GitHub Actions**:
  - Go to the Actions tab → select Run Audit → click Run workflow.

---

## 📋 Phase 2: CI/CD Automation (GitHub Actions)

**Goal:** Automate build, test, and deployment for both frontend (React) and backend (Node.js).

---

## 🔹 Deployment Rules

- **Staging branch:** Auto-deploy on every push/merge.  
- **Main branch:** Manual deploy post PR approval.  
- **Rollback:** Supports deploying the last successful version.

---

## 🛠 Deployment Scripts

- `ci/deploy_backend.sh` → Builds & deploys Node.js backend.  
- `ci/deploy_frontend.sh` → Builds & deploys React frontend.  

---

## 🔹 SSH Placeholders

```text
ec2-user@staging-ec2-ip   # Replace with your staging EC2 public IP or DNS
ec2-user@prod-ec2-ip      # Replace with your production EC2 public IP or DNS
