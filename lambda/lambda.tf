module "lambda" {
  function_name    = var.function_name
  filename      = var.filename
  handler          = var.handler
  runtime          = var.runtime
  role            = var.lambda_role
}