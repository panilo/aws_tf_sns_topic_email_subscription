{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Parameters": {
      "EmailAddress": {
        "Description": "The email address to receive the alert",
        "Type": "String"
      },
      "SnsTopicArn": {
        "Description": "The SNS Topic to subscribe ARN",
        "Type": "String"
      }
    },
    "Resources": {
        "SNSS52GE": {
            "Type": "AWS::SNS::Subscription",
            "Properties": {
              "Protocol": "email",
              "Endpoint": {
                "Ref": "EmailAddress"
              },
              "TopicArn": {
                "Ref": "SnsTopicArn"
              }
            }
        }
    }
}
