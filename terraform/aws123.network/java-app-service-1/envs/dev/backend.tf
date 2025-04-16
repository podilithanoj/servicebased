terraform {
  backend "s3" {
    bucket = "onwardscredit"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
