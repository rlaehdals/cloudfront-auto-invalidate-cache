resource "aws_s3_bucket_notification" "example_notification" {
  bucket = var.bucket_name

  lambda_function {
    lambda_function_arn = var.lambda_function_arn
    events              = ["s3:ObjectCreated:Put"]
    filter_prefix       = var.prefix
  }
}