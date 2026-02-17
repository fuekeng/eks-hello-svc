provider "aws" {
  region = "us-east-1"
  
}

provider "helm" {
  kubernetes = {
    host                   = data.aws_eks_cluster.cluster.endpoint
    token                  = data.aws_eks_cluster_auth.cluster.token
    insecure = true
    # cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  }
}
terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = ">=2.11.0"  # Use the latest version available
    }
    kubectl = {
      source = "bnu0/kubectl"
      version = "0.27.0"
    }
  }

  backend "s3" {
  }
}