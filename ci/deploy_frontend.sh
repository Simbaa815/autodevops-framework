#!/bin/bash
set -e

ENV=$1  # staging or production

echo "Deploying frontend to $ENV..."

# Navigate to frontend folder
cd frontend || exit 1

# Install dependencies
npm install

# Build project
npm run build

# Deploy to EC2 (example using scp)
if [ "$ENV" == "staging" ]; then
  SSH_HOST="ec2-user@staging-ec2-ip"
else
  SSH_HOST="ec2-user@prod-ec2-ip"
fi

# Copy build files
scp -r ./build/* $SSH_HOST:/var/www/html/

echo "Frontend deployed to $ENV successfully!"
