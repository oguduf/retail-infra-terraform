# retail-infra-terraform# Retail Microservices Platform Infrastructure

Terraform infrastructure for the Retail Microservices Platform on AWS EKS.

## Scope

This repository provisions the AWS infrastructure used by the application and Kubernetes platform repositories.

```text
AWS Infrastructure
├── VPC, subnets, route tables, and NAT gateway
├── Amazon EKS and managed node groups
├── Amazon ECR repositories
├── RDS MySQL
├── DynamoDB tables
├── ElastiCache
├── Amazon EventBridge and SQS dead-letter queues
├── IAM roles and KMS encryption
└── CloudWatch logging, metrics, and alarms
```

## Repository Structure

| Directory | Purpose |
|---|---|
| `bootstrap/` | Terraform state bucket and state-locking configuration |
| `environments/dev/` | Development environment root configuration |
| `modules/network/` | VPC, subnets, routing, and NAT gateway |
| `modules/eks/` | EKS cluster, node groups, and IAM |
| `modules/data/` | RDS, DynamoDB, and ElastiCache |
| `modules/messaging/` | EventBridge, SQS queues, and dead-letter queues |
| `modules/observability/` | CloudWatch logs, alarms, and dashboards |
| `.github/workflows/` | Terraform validation, plan, and deployment workflows |

## Deployment Order

1. Bootstrap Terraform state storage.
2. Create networking.
3. Create data and messaging services.
4. Create EKS and node groups.
5. Configure observability.
6. Deploy workloads from the EKS platform repository.

## Important Rules

- Terraform state is stored remotely and must not be committed to Git.
- Secrets are stored in AWS Secrets Manager, not in `.tfvars` files.
- Infrastructure changes are made on `dev`, reviewed in a pull request, and merged into `main`.
- This repository creates AWS infrastructure only; application code and Helm charts live in separate repositories.