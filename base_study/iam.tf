// 비밀번호 같은 것은 cli나 console로 만들어야 함
resource "aws_iam_user" "rokwon_kim" {
  name = "rokwon.kim"
}

resource "aws_iam_group" "terraform_iam_group" {
  name = "terraform-iam-group"
}

resource "aws_iam_group_membership" "terraform_iam_membership" {
  name = aws_iam_group.terraform_iam_group.name
  users = [
    aws_iam_user.rokwon_kim.name
  ]

  group = aws_iam_group.terraform_iam_group.name
}

# IAM User Custom Policy
resource "aws_iam_user_policy" "art_devops_black" {
  name = "super-admin"
  user = aws_iam_user.rokwon_kim.name

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
