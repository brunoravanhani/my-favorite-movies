terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.24.0"
    }
  }
  required_version = "~> 1.2"

  backend "s3" {
    bucket = "bruno-ravanhani-site-terraform"
    key = "favorite-movies/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "my-favorite-movies-terraform"
  }
}
