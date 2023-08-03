# This lines of codes sets up the cloud intergration and also add the AWS provider as follows:
terraform {
    required_providers {
      aws ={
        source = "hashicorp/aws"
        # old version was 5.7.0
        # upgrade with terraform init -upgrade
        version = "5.10.0"
      }
    }
token {
  cli_token = "bOFdczYSJgnXyA.atlasv1.JuDizvzZiU8rVm5XxzJzTCQDXQ6jYkKINt3Mi0EipuOTwqNOTGLyZEcyAxTTWAgVfdI"
  cloud {
    organization = "cba-project"

    workspaces {
      name = "quizapp"


    }
  }
}
}
# Provide the AWS configuration credentials to allow Terraform to connect to AWS:
provider "aws" {
  region = var.region

}


    

 

