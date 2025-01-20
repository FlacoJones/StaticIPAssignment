# EC2 Autoscaling Group | Elastic IP | SNS | Static IP Assignment

Based on https://repost.aws/articles/ARl2NsdPqORQevlogm38vPnw/attaching-available-eips-to-auto-scaling-groups-for-consistent-ip-addresses

### ELASTIC IP
- [ ] Create an Elastic IP
- [ ] Give it a name

### SNS
- [ ] Create SNS Topic

### LAMBDA
- [ ] Create Lambda Function
- [ ] Change file name to .js
- [ ] Deploy [code](eipAssigner.js) for Lambda function
- [ ] Add SNS Trigger (this creates the subscription)

### IAM
- [ ] Create Role called `EIPAssignerLambda` for Lambda function
- [ ] Create Policy called `EIPAssignmentAndCloudwatchLogging` for Lambda function from the [Policy Provided](eipAssignerPolicy.json)
- [ ] Attach the `EIPAssignmentAndCloudwatchLogging` policy to the `EIPAssignerLambda` role

### LAMBDA
- [ ] Assign the `EIPAssignerLambda` role to the Lambda

### AUTOSCALING LIFECYCLE HOOK
(where the hell is the notification endpoint arn in the UI?!)
- [ ] Use AWS CLI to [put-lifecycle-hook](lifecyclehook_command.sh)

### IAM
- [ ] Create Role for Autoscaling Lifecycle Hook called `AutoScalingNotificationRole`
- [ ] Add EC2 Autoscaling Notification Access

### AUTOSCALING LIFECYCLE HOOK
(where the hell is the notification endpoint arn in the UI?!)
- [ ] Complete the command with the `AutoScalingNotificationRole` ARN

### TEST RUN BY SCALING UP
- [ ] Test run by scaling up