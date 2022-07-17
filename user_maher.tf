resource "aws_iam_user" "maher" {
     name =format(
        "%s-%s-maher-admin",
        var.project_name,
        var.platforme_name,
      )
  path = "/system/"

  tags = merge(
    {
      "Name" = format(
        "%s-%s-maher-admin",
        var.project_name,
        var.platforme_name
      )
      },
)
}

resource "aws_iam_user_policy" "maher_admin_policy" {
   name =format(
        "%s-%s-maher_admin-policy",
        var.project_name,
        var.platforme_name,
      )
  user = aws_iam_user.maher.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "*"
            ],
            "Resource": [
                "*"
          ]
     }
]
}
EOF
}


