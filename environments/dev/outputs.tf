output "vpc_id" {
  description = "Development VPC ID."
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs."
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs."
  value       = module.network.private_subnet_ids
}

output "nat_gateway_id" {
  description = "Single NAT gateway ID."
  value       = module.network.nat_gateway_id
}

output "eks_cluster_name" {
  description = "EKS cluster name."
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "EKS Kubernetes API endpoint."
  value       = module.eks.cluster_endpoint
}

output "eks_oidc_issuer_url" {
  description = "OIDC issuer URL for Kubernetes workload IAM roles."
  value       = module.eks.cluster_oidc_issuer_url
}

output "eks_node_group_name" {
  description = "Default EKS managed node group."
  value       = module.eks.node_group_name
}

output "eks_oidc_provider_arn" {
  description = "IAM OIDC provider ARN for EKS workload identity."
  value       = module.eks.oidc_provider_arn
}