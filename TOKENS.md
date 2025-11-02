# Template Tokens Reference

This document lists all template tokens used in this AWS + GitHub cloud provider configuration. These tokens are replaced during the GitOps template instantiation process.

> **⚠️ Security Warning**: Never store sensitive information like API keys, passwords, or secrets directly in token values. Use proper secret management systems like Vault, Kubernetes secrets, or your cloud provider's secret management service.

## Token Categories

### Cloud Infrastructure

| Token | Template Value | Description |
|-------|---------------|-------------|
| `AWS_ACCOUNT_ID` | `126827061464` | AWS account identifier |
| `AWS_KMS_KEY_ID` | `<AWS_KMS_KEY_ID>` | AWS KMS key for encryption |
| `CLOUD_PROVIDER` | `aws` | Cloud provider name (aws) |
| `CLOUD_REGION` | `us-east-2` | AWS region for deployment |
| `AMI_TYPE` | `AL2_x86_64` | EC2 instance AMI type |
| `NODE_COUNT` | `6` | Number of worker nodes |
| `NODE_TYPE` | `m5.large` | EC2 instance type for nodes |

### Cluster Configuration

| Token | Template Value | Description |
|-------|---------------|-------------|
| `CLUSTER_ID` | `9hd3jt` | Unique cluster identifier |
| `CLUSTER_NAME` | `mgmt-k1-gitops-ing` | EKS cluster name |
| `CLUSTER_TYPE` | `mgmt` | Type of cluster deployment |
| `KUBE_CONFIG_PATH` | `/root/.k1/mgmt-k1-gitops-ing/kubeconfig` | Path to kubeconfig file |

### DNS and Networking

| Token | Template Value | Description |
|-------|---------------|-------------|
| `DOMAIN_NAME` | `gitops.ing` | Base domain for all services |
| `EXTERNAL_DNS_DOMAIN_NAME` | `gitops.ing` | Domain for external DNS |
| `EXTERNAL_DNS_PROVIDER_NAME` | `aws` | DNS provider (route53, cloudflare, etc.) |
| `EXTERNAL_DNS_PROVIDER_TOKEN_ENV_NAME` | `not-used-uses-service-account` | Environment variable for DNS token |

### Application URLs

| Token | Template Value | Description |
|-------|---------------|-------------|
| `ARGOCD_INGRESS_URL` | `https://argocd.gitops.ing` | ArgoCD web interface URL |
| `ARGO_WORKFLOWS_INGRESS_URL` | `https://argo.gitops.ing` | Argo Workflows web interface URL |
| `ATLANTIS_INGRESS_URL` | `https://atlantis.gitops.ing` | Atlantis web interface URL |
| `CHARTMUSEUM_INGRESS_URL` | `https://chartmuseum.gitops.ing` | Chart Museum web interface URL |
| `VAULT_INGRESS_URL` | `https://vault.gitops.ing` | Vault web interface URL |
| `VAULT_INGRESS_NO_HTTPS_URL` | `vault.gitops.ing` | Vault URL without HTTPS |

### Sample Application URLs

| Token | Template Value | Description |
|-------|---------------|-------------|
| `METAPHOR_DEVELOPMENT_INGRESS_URL` | `https://metaphor-development.gitops.ing` | Development environment URL |
| `METAPHOR_STAGING_INGRESS_URL` | `https://metaphor-staging.gitops.ing` | Staging environment URL |
| `METAPHOR_PRODUCTION_INGRESS_URL` | `https://metaphor-production.gitops.ing` | Production environment URL |

### Git Configuration

| Token | Template Value | Description |
|-------|---------------|-------------|
| `GIT_FQDN` | `https://github.com/` | Fully qualified domain name for Git |
| `GIT_PROVIDER` | `github` | Git provider name (github) |
| `GITHUB_HOST` | `https://github.com/gitops-ing/gitops.git` | GitHub hostname |
| `GITHUB_OWNER` | `gitops-ing` | GitHub organization/user |
| `GITHUB_USER` | `johndietz` | GitHub username |
| `GITOPS_REPO_URL` | `https://github.com/gitops-ing/gitops.git` | GitOps repository URL |
| `GITOPS_REPO_ATLANTIS_WEBHOOK_URL` | `https://atlantis.gitops.ing/events` | Webhook URL for Atlantis |

### Storage and Registry

| Token | Template Value | Description |
|-------|---------------|-------------|
| `CONTAINER_REGISTRY_URL` | `126827061464.dkr.ecr.us-east-2.amazonaws.com` | Container registry URL |
| `KUBEFIRST_ARTIFACTS_BUCKET` | `k1-artifacts-mgmt-k1-gitops-ing-9hd3jt` | S3 bucket for artifacts |
| `KUBEFIRST_STATE_STORE_BUCKET` | `k1-state-store-mgmt-k1-gitops-ing-9hd3jt` | S3 bucket for Terraform state |
| `KUBEFIRST_STATE_STORE_BUCKET_HOSTNAME` | `` | Hostname for state bucket |
| `VAULT_DATA_BUCKET` | `` | S3 bucket for Vault data |

### Platform Configuration

| Token | Template Value | Description |
|-------|---------------|-------------|
| `ALERTS_EMAIL` | `alerts@konstruct.io` | Email for platform alerts |
| `ATLANTIS_ALLOW_LIST` | `github.com/gitops-ing/*` | Allowed repositories for Atlantis |
| `KUBEFIRST_CLIENT` | `<KUBEFIRST_CLIENT>` | Kubefirst client identifier |
| `KUBEFIRST_TEAM` | `false` | Team name |
| `KUBEFIRST_TEAM_INFO` | `` | Additional team information |
| `KUBEFIRST_VERSION` | `v2.10.3` | Kubefirst platform version |
| `USE_TELEMETRY` | `` | Enable/disable telemetry |

### Workload Clusters

| Token | Template Value | Description |
|-------|---------------|-------------|
| `WORKLOAD_AMI_TYPE` | `<WORKLOAD_AMI_TYPE>` | AMI type for workload clusters |
| `WORKLOAD_ASSUME_ROLE` | `<WORKLOAD_ASSUME_ROLE>` | IAM role for workload clusters |
| `WORKLOAD_CLUSTER_ACCOUNT_ID` | `<WORKLOAD_CLUSTER_ACCOUNT_ID>` | AWS account for workload clusters |
| `WORKLOAD_CLUSTER_BOOTSTRAP_TERRAFORM_MODULE_URL` | `git::https://github.com/gitops-ing/gitops.git//terraform/aws/modules/bootstrap?ref=main` | Terraform module for bootstrap |
| `WORKLOAD_CLUSTER_NAME` | `<WORKLOAD_CLUSTER_NAME>` | Name of workload cluster |
| `WORKLOAD_CLUSTER_REGION` | `<WORKLOAD_CLUSTER_REGION>` | Region for workload cluster |
| `WORKLOAD_CLUSTER_TERRAFORM_MODULE_URL` | `<WORKLOAD_CLUSTER_TERRAFORM_MODULE_URL>` | Terraform module URL |
| `WORKLOAD_ENVIRONMENT` | `<WORKLOAD_ENVIRONMENT>` | Environment name for workload |
| `WORKLOAD_EXTERNAL_DNS_DOMAIN_NAME` | `<WORKLOAD_EXTERNAL_DNS_DOMAIN_NAME>` | DNS domain for workload cluster |
| `WORKLOAD_NODE_COUNT` | `<WORKLOAD_NODE_COUNT>` | Number of nodes in workload cluster |
| `WORKLOAD_NODE_TYPE` | `<WORKLOAD_NODE_TYPE>` | Instance type for workload nodes |

## Usage Notes

- These tokens are automatically replaced during template instantiation
- Token values should not contain sensitive information
- All URLs will be generated based on your domain configuration
- AWS-specific tokens are only used in AWS deployments