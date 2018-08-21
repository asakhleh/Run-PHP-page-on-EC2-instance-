# Terraform For Provisioning AWS resources.
Use Terraform (Infrastructure as code) to provision an EC2 instance on AWS and install apache to run a PHP page.



# Terraform templates

This folder contains [Terraform](https://www.terraform.io/) templates to deploy a PHP index file to [Elastic Compute Cloud (EC2)](https://aws.amazon.com/ec2/).

## Quick start

**NOTE**: Following these instructions will deploy a PHP page into your AWS account, including one `t2.micro`, running this code may cost you money.

### Initial setup

1. Sign up for an [AWS account](https://aws.amazon.com/). 
1. Install [Terraform](https://www.terraform.io/) on your device.
1. Add your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` and `AWS_DEFAULT_REGION`.
1. Open `vars.tf`, set the environment variables specified at the top of the file, and fill in any other variables that
   don't have a default.

### Deploying

1. Navigate to terraform-templates.
1. Run `terraform plan` to review all resources that will be created.
1. Run `terrform apply` to create the resources and deploy the app on AWS account.
1. The script will print out the IP address for the instance created.
1. Navigate to the IP address returned above, followed by /index.php to test the script

### Clean up

To clean up all AWS resources created by Terraform and destroy the infrastructure, run `terrafrom destroy`