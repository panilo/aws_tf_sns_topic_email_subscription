# AWS Terraform - SNS Topic & Email Subscription

## Background 

Need to create a SNS Topic with n email suscription. Terraform doesn't offer option to create email subscription [see here](https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#protocols-supported)

## Solution

Create the SNS Topic Subscription with CloudFormation 
