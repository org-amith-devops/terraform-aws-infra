terraform {
  backend "s3" {
    bucket = "amith-tfstate-bucket"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}