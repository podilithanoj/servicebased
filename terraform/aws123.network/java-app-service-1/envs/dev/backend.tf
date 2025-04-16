terraform {
  backend "s3" {
    bucket = "glacade"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
