output "dynamodb_table" {
  description = "The name of the DynamoDB table created for the Terraform state."
  value       = aws_dynamodb_table.terraform_state_lock.id
}
