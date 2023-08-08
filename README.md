# AWS CloudFormation Building Block Templates

## Configure a static website with a routing rule
/aws/s3-configure-a-static-website-with-a-routing-rule\
[- AWS::S3::Bucket - Configure a static website with a routing rule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html)\
[- AWS::S3::BucketPolicy - Bucket policy that allows GET requests from specific referers ](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html)

---
Remark
>- NA

Fixed
>- Bucket cannot have ACLs set with ObjectOwnership's BucketOwnerEnforced setting 
>  Service: Amazon S3; Status Code: 400; Error Code: InvalidBucketAclWithObjectOwnership
>- Missing bucket policy

Backlog
>- Routing Rules
>- Python to combine CF stack provisioning and upload files

## Configuring a Basic VPC in AWS
/aws/vpc-configuring-a-basic-vpc-in-aws\
[- AWS CodeBuild - AWS CloudFormation VPC template](https://docs.aws.amazon.com/codebuild/latest/userguide/cloudformation-vpc-template.html)

---
Remark 
>- NA

Fixed
>- NA

Backlog
>- Replacing hardcoded value to parameters
>- Python for CF stack provisioning

## Using EC2 Roles and Instance Profiles in AWS
/aws/ec2-using-ec2-roles-and-instance-profiles-in-aws\
[- EC2 with IAM Role: CloudFormation Sample Template](https://www.radishlogic.com/aws/cloudformation/cloudformation-ec2-with-iam-role-template/)

---
Remark
>- Provision the required networking resources using /aws/vpc-configuring-a-basic-vpc-in-aws 
>  before running this CF template

Fixed
>- NA

Backlog
>- Python for CF stack provisioning

## Triggering AWS Lambda from Amazon SQS
/aws/triggering-aws-lambda-from-amazon-sqs\
[- SQS Queue as Lambda Trigger in AWS CloudFormation](https://www.itonaut.com/2018/07/11/sqs-queue-as-lambda-trigger-in-aws-cloudformation/)\
[- AWS Lambda: Allows a Lambda function to access an Amazon DynamoDB table](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_examples_lambda-access-dynamodb.html)\
[- AWS::DynamoDB::Table](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html)

---
Remark
>- Create the S3 bucket with the corresponding folder (Refer to CF template) and upload lambda_functions zip file.
>  bucket name lambda-sqs-[[region]]-[[account id]]
>  bucket folder "lambda" 
>- SQS queue name is dynamically created sqs-[[region]]-[[account id]]
>- DynamoDB table hardcoded to "Message-1"
>- Run ./send_message.py -q sqs-us-east-1-248345593149 -i 0.1

Fixed
>- Missing identity policies for DynamoDB table and DynamoDB Table

Backlog
>- Automate S3 bucket setup and upload lambda_functions zip file
>- Python for CF stack provisioning

## Using AWS Tags and Resource Groups
/aws/tag-using-aws-tags-and-resource-groups\
[- Introduction to AWS Config with CFN – Auditing S3 Bucket Logging Settings](https://awstut.com/en/2022/12/03/introduction-to-aws-config-with-cfn-auditing-s3-bucket-logging-settings-en/)\
[- AWS Config - Supported Resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources)\
[- AWS Config - List of AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html)\
[- AWS Resource Groups - Creating query-based groups in AWS Resource Groups](https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html)

---
Remark
>- CF template is configured to check for resource that are not tagged.
>- CF template also configured to create the resource group, using the tag on the resource. 
>  Resource group is used to ease managing the resources example tagging, etc.

Fixed
>- NA

Backlog
>- Python for CF stack provisioning

## Deploy an Amazon RDS Multi-AZ and Read Replica in AWS
/aws/rds-deploy-an-amazon-rds-multi-az-and-read-replica-in-aws\
[- AWS CloudFormation - Grant self-managed permissions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html)\
[- RDS Read Replica using CFN](https://awstut.com/en/2023/01/09/rds-read-replica-using-cfn-en/)

---
Remark
>- Before CloudFormation stack deployment, setup the following resources required by the CloudFormation Stackset\
>  AWSCloudFormationStackSetAdministrationRole IAM role using prep-AWSCloudFormationStackSetAdministrationRole.yaml\
>  AWSCloudFormationStackSetExecutionRole IAM role using prep-AWSCloudFormationStackSetExecutionRole.yaml\
>  buildingblock-<Account ID> S3 bucket to hold the CloudFormation templates in "rds" folder (prep-s3-template-bucket)\

Fixed
>- NA

Backlog
>- Automate pre deployment prep works
>- Create Cloudformation custom resource to create "rds" folder in S3 bucket
>- Python for CF stack provisioning

## Using CloudWatch for Resource Monitoring
/aws/cloudwatch-using-cloudwatch-for-resource-monitoring
[- AWS CloudFormation - AWS::CloudWatch::Dashboard](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html)\
[- Amazon CloudWatch - Dashboard Body Structure and Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html#CloudWatch-Dashboard-Properties-Widgets-Structure)\
[- AWS News Blog - API & CloudFormation Support for Amazon CloudWatch Dashboards](https://aws.amazon.com/blogs/aws/new-api-cloudformation-support-for-amazon-cloudwatch-dashboards/)
[- JSON.stringify()](https://www.w3schools.com/js/js_json_stringify.asp)

---
Remark
>- Showcase on how to provision a CloudWatch Dashboard with CloudFormation template

Fixed
>- NA

Backlog
>- NA

## (WIP) Building a Serverless Application Using Step Functions, API Gateway, Lambda, and S3 in AWS
/aws/serverless-application-using-step-functions-api_gateway-lambda-s3
[- Verify domains for SES using CloudFormation](https://medium.com/poka-techblog/verify-domains-for-ses-using-cloudformation-8dd185c9b05c)\
[- Lambda to SES](https://serverlessland.com/patterns/lambda-ses)\
[- Sending email with AWS SES and a Python Lambda using Cloudformation](https://www.thelambdablog.com/sending-email-with-aws-ses-and-a-python-lambda-using-cloudformation/)\
[- ACloudGuru-Resources](https://github.com/ACloudGuru-Resources/lab-building-a-serverless-application-using-step-functions-api-gateway-lambda-and-s3-in-aws)

---
Remark
>- This is still work-in-progress but all individual template components are deployable.
>- Refer to Architecture diagram (architecture-diagram.png) and lab guide (guide-building-a-serverless-application-using-step-functions.docx)
>- Create the S3 bucket with the corresponding folder (Refer to CF template) and upload lambda_functions zip file.\
>  bucket name buildingblock-[[account id]]\
>  bucket folder "lambda" for AWS lambda code package\
>  bucket folder "step" for step

Fixed
>- Inject variables into AWS Step Machine

Backlog
>- Automate verify email for AWS Simple Email Service
>- CloudFormation template for API Gateway
>- End-to-End connection from S3 (web server) to SES to send notification email