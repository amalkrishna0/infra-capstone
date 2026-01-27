provider "aws" {
	region = var.region
}

resource "aws_s3_bucket" "website" {
	bucket = var.bucket_name
}

resource "aws_s3_bucket_website_configuration" "website" {
	bucket = aws_s3_bucket.website.id
	
	index_document{
		suffix = "index.html"
	}
}



resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.website.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.website.arn}/*"
      }
    ]
  })
}



resource "aws_s3_object" "index"{
	bucket = aws_s3_bucket.website.id
	key = "index.html"
	source = "index.html"
	content_type = "text/html"
}
