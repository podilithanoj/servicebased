terraform {
  backend "s3" {
    bucket = "tf-state-staging"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}