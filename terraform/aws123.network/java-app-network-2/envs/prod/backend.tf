terraform {
  backend "s3" {
    bucket         = "glacade"
    key            = "javanetwork/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}