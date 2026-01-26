resource "aws_s3_bucket" "commitme_bucket" {
  bucket = "commitme-s3-bucket-v1"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "PUT", "POST"]
    allowed_origins = [
      "https://commit-me.com",
      "http://localhost:3000",
      "http://localhost:8080",
      "http://3.39.214.196:3000",
      "http://3.39.214.196:8080",
    ]
    expose_headers  = ["ETag"]
    max_age_seconds = "3000"
  }

  force_destroy = "false"

  grant {
    id          = "c932d1bbf8a07f27d689b3db08a16df6562853bacacc1b3d192536f3ce6f5a0a"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = jsonencode({
    Statement = [
      {
        Action    = ["s3:GetObject", "s3:PutObject", "s3:AbortMultipartUpload"]
        Effect    = "Allow"
        Principal = "*"
        Resource  = "arn:aws:s3:::commitme-s3-bucket-v1/*"
        Sid       = "Statement1"
      }
    ]
    Version = "2012-10-17"
  })

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }

  timeouts {}
}

resource "aws_s3_bucket_policy" "commitme_bucket_policy" {
  bucket = "commitme-s3-bucket-v1"
  policy = jsonencode({
    Statement = [
      {
        Action    = ["s3:GetObject", "s3:PutObject", "s3:AbortMultipartUpload"]
        Effect    = "Allow"
        Principal = "*"
        Resource  = "arn:aws:s3:::commitme-s3-bucket-v1/*"
        Sid       = "Statement1"
      }
    ]
    Version = "2012-10-17"
  })
  region = "ap-northeast-2"
}
