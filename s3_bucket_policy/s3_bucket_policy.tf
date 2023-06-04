resource "aws_s3_bucket_policy" "allow_access_from" {
  bucket = var.bucket_id
  policy = data.aws_iam_policy_document.allow_access_from_another_account.json
}


data "aws_iam_policy_document" "allow_access_from_another_account" {
  statement {
    principals {
      type        = "Service"
      identifiers = [var.cloudfront_id]
    }

    effect = "Allow"

    actions = [
      "s3:GetObject"
    ]

    resources = var.resources

    condition {
      test     = "StringEquals"
      variable = "AWS:SourceArn"
      values   = var.condition_value
    }
  }
}