terraform {
  backend "s3" {
    bucket = "tf-state-dev"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}