terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.27.0"
    }

    # random = {
    #   source  = "hashicorp/random"
    #   version = "~> 3.5.1"
    # }

    # tls = {
    #   source  = "hashicorp/tls"
    #   version = "~> 4.0.4"
    # }

    # cloudinit = {
    #   source  = "hashicorp/cloudinit"
    #   version = "~> 2.3.2"
    # }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0.1"
    }
  }

  backend "s3" {
    bucket = "gitops-project13"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }

  #   required_version = "~> 1.6.3"
}