resource "aws_s3_bucket" "terraform_state" {
  bucket = "ivolve_finalproject"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.bucket

  versioning_configuration {
    status = "Enabled"
  }
}



