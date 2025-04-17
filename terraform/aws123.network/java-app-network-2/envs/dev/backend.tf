terraform {
  backend "s3" {
    bucket         = "glacade"
    key            = "javanetwork/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}