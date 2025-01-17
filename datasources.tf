data "aws_caller_identity" "current" {}

# Note: AWS SSO roles are automatically generated with a random number at the
#       end of the role ARN, therefore a wildcard match is required.

data "aws_iam_roles" "syseng_power_user_sso_role" {
  path_prefix = "/aws-reserved/sso.amazonaws.com/"
  name_regex  = "AWSReservedSSO_SystemAdministrator_.+"
}

data "aws_iam_roles" "syseng_admin_sso_role" {
  path_prefix = "/aws-reserved/sso.amazonaws.com/"
  name_regex  = "AWSReservedSSO_AdministratorAccess_.+"
}

data "aws_iam_roles" "developer_sso_role" {
  path_prefix = "/aws-reserved/sso.amazonaws.com/"
  name_regex  = "AWSReservedSSO_SystemAdministrator_.+"
}
