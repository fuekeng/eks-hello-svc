data "aws_eks_cluster" "cluster" {
  name = "eks-${var.environment}"  # Change this to your EKS cluster name
}

data "aws_eks_cluster_auth" "cluster" {
  name = data.aws_eks_cluster.cluster.name
}

# data "aws_acm_certificate" "acm" {
#   domain = var.domain_name   # Use wildcard or specific domain
#   types  = ["AMAZON_ISSUED"]    # Filter for Amazon-issued certificates
#   most_recent = true            # Use the most recently issued certificate
# }
