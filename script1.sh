#!/bin/bash

# Check if the JAR file name is provided
if [ -z "$1" ]; then
  echo "No JAR file name provided"
  exit 1
fi

JAR_FILE=$1

# Navigate to the deployment directory
cd /home/ubuntu/mydeploys/ || { echo "Failed to navigate to deployment directory"; exit 1; }

# Ensure the JAR file is executable
chmod +x ./$JAR_FILE

# Run the JAR file
nohup java -jar ./$JAR_FILE > app.log 2>&1 &

# Any other deployment steps
echo "Deployment of $JAR_FILE completed successfully."
