provider "aws" {
   region = "eu-west-1"
 }

 terraform {
  backend "s3" {
    bucket = "arik-tf-state"
    key    = "env/staging"
    region = "eu-west-1"
  }
}