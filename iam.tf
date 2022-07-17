#############################
# lake iam
#############################

resource "aws_iam_role" "lake_role" {
       name =format(
        "%s-%s-lake-iam-role",
        var.project_name,
        var.platforme_name,
      )

assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {

      "Sid": "",
      "Effect": "Allow",
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ]
}
EOF


  tags = merge(
    {
      "Name" = format(
        "%s-%s-lake-IAM",
        var.project_name,
        var.platforme_name,
      )
      },
)
}






