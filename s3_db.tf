#configure the s3 bucket
resource "aws_s3_bucket" "proj_bucket" {
  bucket = "proj-bucket-qweasdzxc"
  acl = "private"
}

#configure the dynamoDB table
resource "aws_dynamodb_table" "proj_dynamodb" {
  name           = "proj-lock-table"
  hash_key       = "LockID"
  billing_mode   = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"
  }
}