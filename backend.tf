terraform {
  backend "s3" {
    bucket       = "aws-oidc-githubactions-demo"
    key          = "global/s3/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true

    assume_role = {
      role_arn = "arn:aws:iam::597787105491:role/Engineer"
    }
  }
}