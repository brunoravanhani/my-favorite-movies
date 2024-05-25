provider "aws" {
  region = "us-east-1"
}

module "website_s3_bucket" {
  source = "./modules/static-s3-cloudfront"

  bucket_name = "my-favorite-movies"
  region = "us-east-1"
  oac_name = "my-favorite-movies-oac"
  tags = {
    Terraform   = "true"
    Context     = "ravanhani-site"
    App     = "my-favorite-movies"
  }
}

module "website_s3_bucket_upload" {
  depends_on = [ module.website_s3_bucket ]

  source = "./modules/aws-upload-site-s3"

  bucket_name = "my-favorite-movies"
  path = var.content_path
}
