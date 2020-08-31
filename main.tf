provider "aws" {
# Uses my personal account
  version = "2.33.0"

  region = var.aws_region
}

# required provider
provider "random" {
  version = "2.2"
}

resource "aws_dynamodb_table" "tfc_example_table" {
  name = var.db_table_name

  read_capacity  = var.db_read_capacity
  write_capacity = var.db_write_capacity
  hash_key       = "UUID"
  
  attribute {
    name = "UUID"
    type = "S"
  }
}
