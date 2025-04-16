terraform {
  backend "s3" {
    bucket = "tf-state-prod"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}