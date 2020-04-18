# Create the SNS topic
resource "aws_sns_topic" "my_topic" {
  name = var.name

  tags = var.tags
}

# Create the SNS Topic Subscription
data "template_file" "cft_sns_email_subscription" {
  template = file("${path.module}/cft_sns_email_subscription.tpl")
}

resource "aws_cloudformation_stack" "sns_topic_subscription" {
  count = length(var.email_address_list)

  name          = "${var.name}-subscription-${count.index}"
  template_body = data.template_file.cft_sns_email_subscription.rendered

  parameters = {
    EmailAddress = var.email_address_list[count.index]
    SnsTopicArn  = aws_sns_topic.my_topic.arn
  }

  tags = var.tags
}


