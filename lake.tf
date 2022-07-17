
data "aws_s3_bucket" "maher" {
  bucket = "test-lake-maher"
}

resource "aws_lakeformation_resource" "maher" {
  arn = data.aws_s3_bucket.maher.arn
#  role
}
