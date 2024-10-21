terraform {
  backend "s3" {
    bucket = "chowdary-hari"
    key    = "parameter-store/parameter-store/terraform.state"
    region = "us-east-1"
  }
}
