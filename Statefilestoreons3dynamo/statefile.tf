resource "aws_s3_bucket" "creates3" {
    bucket = "mybddducket"
      
}
resource "aws_dynamodb_table" "mydb" {
    name = "terrafom_dynamo_store"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }
  
}
