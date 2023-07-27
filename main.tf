provider "aws" {
  #  access_key = "AKIATLTID6I5TCGXW4FV"
  #  secret_key = "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"
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "devopsb25terraform"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devopsb25-terraform-state-lock-dynamo"
    encrypt        = true
  }
}
