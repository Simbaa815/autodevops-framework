#!/bin/bash
set -e

ENV=$1  # staging or production

echo "Deploying backend to $ENV..."

# Navigate to backend folder
cd backend || exit 1

# Install dependencies
npm install

# Run tests
npm test

# Build (if needed)
npm run build

# Deploy to EC2 using SSH (example)
if [ "$ENV" == "staging" ]; then
  SSH_HOST="ec2-user@staging-ec2-ip"
else
  SSH_HOST="ec2-user@prod-ec2-ip"
fi

# Copy files to server
scp -r ./dist $SSH_HOST:/home/ec2-user/app-backend/

# Restart service (example with pm2)
ssh $SSH_HOST "pm2 restart backend || pm2 start /home/ec2-user/app-backend/index.js --name backend"

echo "Backend deployed to $ENV successfully!"
