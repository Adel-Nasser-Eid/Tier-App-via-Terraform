# configure the AWS provider
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

#configure the lock to DB
terraform {
  backend "s3" {
    bucket = "proj-bucket-qweasdzxc"
    dynamodb_table = "proj-lock-table"
    key    = "terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    access_key = ""
    secret_key = ""
  }
}