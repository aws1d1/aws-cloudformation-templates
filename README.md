# AWS CloudFormation Sample Templates

## Configure a static website with a routing rule
/aws/s3-configure-a-static-website-with-a-routing-rule\
[- AWS::S3::Bucket - Configure a static website with a routing rule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html)\
[- AWS::S3::BucketPolicy - Bucket policy that allows GET requests from specific referers ](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html)
```
Remark
- NA
Fixed
- Bucket cannot have ACLs set with ObjectOwnership's BucketOwnerEnforced setting Service: Amazon S3; Status Code: 400; Error Code: InvalidBucketAclWithObjectOwnership
- Missing bucket policy
Backlog
- Routing Rules
- Python to combine CF stack provisioning and upload files
```
\
## Configuring a Basic VPC in AWS
/aws/vpc-configuring-a-basic-vpc-in-aws\
[- AWS CodeBuild - AWS CloudFormation VPC template](https://docs.aws.amazon.com/codebuild/latest/userguide/cloudformation-vpc-template.html)
```
Remark 
- NA
Fixed
- NA
Backlog
- Replacing hardcoded value to parameters
- Python for CF stack provisioning
```
\
## Using EC2 Roles and Instance Profiles in AWS
/aws/ec2-using-ec2-roles-and-instance-profiles-in-aws\
[- EC2 with IAM Role: CloudFormation Sample Template](https://www.radishlogic.com/aws/cloudformation/cloudformation-ec2-with-iam-role-template/)
```
Remark
- Provision the required networking resources using /aws/vpc-configuring-a-basic-vpc-in-aws before running this CF template
Fixed
- NA
Backlog
- Python for CF stack provisioning
```
\
## Triggering AWS Lambda from Amazon SQS
/aws/triggering-aws-lambda-from-amazon-sqs\
[- SQS Queue as Lambda Trigger in AWS CloudFormation](https://www.itonaut.com/2018/07/11/sqs-queue-as-lambda-trigger-in-aws-cloudformation/)\
[- AWS Lambda: Allows a Lambda function to access an Amazon DynamoDB table](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_examples_lambda-access-dynamodb.html)
[- AWS::DynamoDB::Table](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html)
```
Remark
- Create the S3 bucket with the corresponding folder (Refer to CF template) and upload lambda_functions zip file.
  - bucket name lambda-sqs-[[region]]-[[account id]]
  - bucket folder "lambda" 
- SQS queue name is dynamically created sqs-[[region]]-[[account id]]
- DynamoDB table hardcoded to "Message-1"
- Run ./send_message.py -q sqs-us-east-1-248345593149 -i 0.1
Fixed
- Missing identity policies for DynamoDB table and DynamoDB Table
Backlog
- Automate S3 bucket setup and upload lambda_functions zip file
- Python for CF stack provisioning
```