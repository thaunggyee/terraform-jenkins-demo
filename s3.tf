variable "s3_bucket_name" {
  default = ["tho-my-bucket-1", "tho-my-bucket-2", "tho-my-bucket-3"]
}
resource "aws_s3_bucket" "bucket" {
  count  = length(var.s3_bucket_name)
  bucket = var.s3_bucket_name[count.index]
  acl    = "private"

  versioning {
    enabled = true
  }
}

