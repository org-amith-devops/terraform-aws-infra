terraform {
  backend "s3" {
    bucket = "amith-tfstate-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
# test_01