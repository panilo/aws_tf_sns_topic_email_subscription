provider "aws" {
  profile = "personal"
  region  = "eu-west-1"
}

module "sns-topic-and-subscription" {
  source = "./modules/sns_topic"

  name = "MyTopic"
  email_address_list = [
    "myemail@email.com"
  ]
  tags = {
    project = "ExampleSnsTopicAndSubscription"
  }
}
