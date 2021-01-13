module "terraform_state_bucket" {
  source  = "eriktisme/s3-bucket/aws"
  version = "0.1.0"

  bucket = "${var.project_alias}-${var.bucket_purpose}-${var.region}"

  tags = merge(var.tags)
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  hash_key       = "LockID"
  name           = var.table_name
  read_capacity  = 2
  write_capacity = 2

  server_side_encryption {
    enabled = true
  }

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = merge(var.tags)
}
