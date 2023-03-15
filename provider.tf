provider "aws" {
  region  = "eu-west-1" # Don't change the region
}

# Add your S3 backend configuration here

  backend "s3" {
    bucket = "3.devops.candidate.exam"
    key    = "ajay.kushwah"
    region = "eu-west-1"
  }
}
