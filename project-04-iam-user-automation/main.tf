provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "user" {
  name = var.iam_user_name
}

resource "aws_iam_policy" "s3_readonly" {
  name        = "S3ReadOnlyPolicy"
  description = "Read-only access to S3"

  policy = file(var.s3_read_policy_file)
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.s3_readonly.arn
}

