aws autoscaling put-lifecycle-hook \
	--lifecycle-hook-name ScaleUp \
	--auto-scaling-group-name \
	--lifecycle-transition autoscaling:EC2_INSTANCE_LAUNCHING \
	--notification-target-arn \
	--role-arn \
	--heartbeat-timeout 3600 \
	--default-result ABANDON
