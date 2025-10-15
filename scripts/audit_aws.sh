#!/bin/bash
echo "🔍 Auditing AWS setup..."
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType]' --output table
aws iam list-roles --query 'Roles[*].RoleName' --output table
