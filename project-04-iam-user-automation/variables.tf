variable "iam_user_name" {
	description = "IAM user name"
	default = "s3-readonly-user"
}

variable "s3_read_policy_file" {
	description = "Path to S3 Read Only IAM Policy"
	default = "policy/s3-readonly-policy.json"
}
