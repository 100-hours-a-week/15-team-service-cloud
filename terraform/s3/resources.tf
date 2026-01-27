resource "aws_s3_bucket" "commitme_bucket" {
  bucket = "commitme-s3-bucket-v1"

  force_destroy = "false"

  object_lock_enabled = "false"

  region = "ap-northeast-2"
}

resource "aws_s3_bucket_acl" "commitme_bucket_acl" {
  bucket = aws_s3_bucket.commitme_bucket.id
  region = "ap-northeast-2"

  access_control_policy {
    owner {
      id = "c932d1bbf8a07f27d689b3db08a16df6562853bacacc1b3d192536f3ce6f5a0a"
    }

    grant {
      permission = "FULL_CONTROL"

      grantee {
        id   = "c932d1bbf8a07f27d689b3db08a16df6562853bacacc1b3d192536f3ce6f5a0a"
        type = "CanonicalUser"
      }
    }
  }
}

resource "aws_s3_bucket_cors_configuration" "commitme_bucket_cors" {
  bucket = aws_s3_bucket.commitme_bucket.id

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

  region = "ap-northeast-2"
}

resource "aws_s3_bucket_request_payment_configuration" "commitme_bucket_request_payment" {
  bucket = aws_s3_bucket.commitme_bucket.id
  payer  = "BucketOwner"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "commitme_bucket_sse" {
  bucket = aws_s3_bucket.commitme_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }

    bucket_key_enabled = true
  }

  region = "ap-northeast-2"
}

resource "aws_s3_bucket_versioning" "commitme_bucket_versioning" {
  bucket = aws_s3_bucket.commitme_bucket.id

  versioning_configuration {
    status = "Disabled"
  }

  region = "ap-northeast-2"
}

resource "aws_s3_bucket_website_configuration" "commitme_bucket_website" {
  bucket = aws_s3_bucket.commitme_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }

  region = "ap-northeast-2"
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
