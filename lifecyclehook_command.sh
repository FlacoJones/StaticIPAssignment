aws autoscaling put-lifecycle-hook \
	--lifecycle-hook-name ScaleUp \
	--auto-scaling-group-name {INSERT AUTOSCALING GROUP NAME} \
	--lifecycle-transition autoscaling:EC2_INSTANCE_LAUNCHING \
	--notification-target-arn {INSERT SNS TOPIC ARN} \
	--role-arn {INSERT ROLE ARN FOR AUTOSCALING TO PUBLISH TO SNS} \
	--heartbeat-timeout 3600 \
	--default-result ABANDON
