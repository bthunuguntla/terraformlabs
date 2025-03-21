
data "terraform_remote_state" "vpc-remote-state"{
  backend = "s3"
  config = {
    bucket = "infrastatefile-bhanu-2b94d37a2aa23ddc"
    key = "20-vpc/20-vpc-dev.tfstate"
    region = "us-east-1"
      }

}