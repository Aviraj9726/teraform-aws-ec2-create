terraform {
  required_providers {
    aws   = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }
    tls = {
      source = "hashicorp/tls"
      version = "4.0.3"
    }
  }
}





provider "aws" {
  region = "ap-south-1"
}

// local providers



//TLS provider



/*
resource "aws_iam_user" "my-terraform-user" {
  count = length (var.users)
  name = var.users[count.index]
  tags = {
    Name = "${count.index}"
  }

}
resource "aws_iam_group" "dev-group" {
  name = "developers"
  path = "/users/"
}

resource "aws_iam_group" "read-only-group" {
  name = "readers"
  path = "/users/"
}
resource "aws_iam_group" "admin-group" {
  name = "admins"
  path = "/users/"
}

resource "aws_iam_group_membership" "group-memebers" {
  group = aws_iam_group.admin-group.name
  name  = "admins-group-users"
  users = ["${element(var.users,2)}"]
}
data aws_iam_policy admin_access{
  name = "AdministratorAccess"
}
resource "aws_iam_group_policy_attachment" "admin-polic-attach" {
  group = aws_iam_group.admin-group.name
  policy_arn = data.aws_iam_policy.admin_access.arn
}

*/