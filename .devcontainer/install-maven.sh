#!/bin/bash

# Install Maven
MAVEN_VERSION=3.8.4
MAVEN_DIR=apache-maven-$MAVEN_VERSION
MAVEN_TAR=$MAVEN_DIR-bin.tar.gz
MAVEN_URL=https://downloads.apache.org/maven/maven-3/$MAVEN_VERSION/binaries/$MAVEN_TAR

# Download Maven
curl -O $MAVEN_URL

# Extract Maven
tar -xzf $MAVEN_TAR

# Move Maven to /usr/local
sudo mv $MAVEN_DIR /usr/local/maven

# Clean up
rm $MAVEN_TAR

# Set up environment variables
echo "export M2_HOME=/usr/local/maven" >> ~/.bashrc
echo "export MAVEN_HOME=/usr/local/maven" >> ~/.bashrc
echo "export PATH=\${M2_HOME}/bin:\${PATH}" >> ~/.bashrc

# Source the updated .bashrc
source ~/.bashrc
