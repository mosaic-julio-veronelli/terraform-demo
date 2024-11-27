data "aws_iam_policy_document" "lambda_sample_53_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "lambda_sample_53_role" {
  name               = "lambda_sample_53_role"
  assume_role_policy = data.aws_iam_policy_document.lambda_sample_53_policy.json
}

data "archive_file" "lambda_sample_53_zip" {
  type        = "zip"
  source_file = "lambda.py"
  output_path = "lambda.zip"
}

resource "aws_lambda_function" "lambda_sample_53" {
  filename      = "lambda.zip"
  function_name = "lambda_sample_53"
  role          = aws_iam_role.lambda_sample_53_role.arn
  handler       = "lambda.lambda_handler"
  source_code_hash = data.archive_file.lambda_sample_53_zip.output_base64sha256
  runtime = "python3.13"
}
