
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.31.6"

  # Cluster information
  cluster_name                    = local.name
  cluster_version                 = "1.31"
  cluster_endpoint_public_access  = true

  # VPC and subnet configuration
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  control_plane_subnet_ids = module.vpc.intra_subnets

  # Cluster addons
  cluster_addons = {
    vpc-cni = {
      most_recent = true
    }

    kube-proxy = {
      most_recent = true
    }

    coredns = {
      most_recent = true
    }
  }

  # Managed node group defaults
  eks_managed_node_group_defaults = {
    instance_types = ["t3.micro"]

    attach_cluster_primary_security_group = true
  }

  # Managed worker nodes
  eks_managed_node_groups = {
    tws-cluster-ng = {
      instance_types = ["t3.micro"]

      min_size     = 1
      max_size      = 2
      desired_size = 1

      capacity_type = "ON_DEMAND"
    }
  }

  # Resource tags
  tags = {
    Environment = local.env
    Terraform   = "true"
  }
}
