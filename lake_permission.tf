data "aws_caller_identity" "current" {}

data "aws_iam_session_context" "current" {
  arn = data.aws_caller_identity.current.arn
}

resource "aws_lakeformation_data_lake_settings" "test" {
  admins = [data.aws_iam_session_context.current.issuer_arn]

  create_table_default_permissions {
    permissions = ["ALL"]
    principal   = data.aws_iam_session_context.current.issuer_arn
  }

 create_table_default_permissions {
    permissions = ["ALL"]
    principal   = aws_iam_role.test.arn
  }

 trusted_resource_owners = []


