# EC2 Autoscaling Group | Elastic IP | SNS | Static IP Assignment

Based on https://repost.aws/articles/ARl2NsdPqORQevlogm38vPnw/attaching-available-eips-to-auto-scaling-groups-for-consistent-ip-addresses

### ELASTIC IP
[] Create an Elastic IP
[] Give it a name

### SNS
[] Create SNS Topic

### LAMBDA
[] Create Lambda Function
[] Change file name to .js
[] Deploy code for Lambda function
[] Add SNS Trigger (this creates the subscription)

### IAM
[] Create Role called "EIPAssignerLambda" for Lambda function
[] Add EC2 Access Permission to its Role with the Policy Provided

### LAMBDA
[] Assign the "EIPAssignerLambda" role to the Lambda

### AUTOSCALING LIFECYCLE HOOK
(where the hell is the notification endpoint arn in the UI?!)
[] Use AWS CLI to put-lifecycle-hook

### IAM
[] Create Role for Autoscaling Lifecycle Hook
[] Add EC2 Autoscaling Notification Access 

### TEST RUN BY SCALING UP