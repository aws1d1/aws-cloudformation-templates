# AWS CloudFormation Sample Templates

## Configure a static website with a routing rule
/aws/s3-configure-a-static-website-with-a-routing-rule
[- AWS::S3::Bucket - Configure a static website with a routing rule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html)\
[- AWS::S3::BucketPolicy - Bucket policy that allows GET requests from specific referers ](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html)\
```
Fixed
- Bucket cannot have ACLs set with ObjectOwnership's BucketOwnerEnforced setting (Service: Amazon S3; Status Code: 400; Error Code: InvalidBucketAclWithObjectOwnership
- Missing bucket policy

Backlog
- Routing Rules
- Python to combine CF stack provisioning and upload files
```