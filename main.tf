module "eks-jx" {
  source  = "jenkins-x/eks-jx/aws"
  version = "1.15.9"
  cluster_name = "ps-js-cluster"
}

terraform {
  required_version = ">= 0.12.17, < 0.15"

  backend "s3" {
    bucket = "jx-miczeq-bucket"
    key    = "test"
    region = "eu-west-2"
  }
}
