# Tier-App-via-Terraform
A tier app via terraform to store the state file of terraform on a s3 bucket and lock it by dynamodb

the project conects to an AWS account with cridentials and does the next.
- creates a VPC (192.168.0.0/16).
- creates an IGW.
- creates two subnets, a public subnet () and a private subnet.
- creates two route tables...
- - the first route table routes all traffic from the public subnet to the IGW.
- - the second routes traffic from the private subnet to the public subnet.
- creates an ec2 instance named "App" inside the public subnet.
- creates an ec2 instance named "DB" inside the private subnet.
- stores the state file of terraform "terraform.tfstate" in the pre-made s3 bucket, and lock it by the pre-made dynamoDB table.
