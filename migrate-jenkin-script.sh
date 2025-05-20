#!/bin/bash

migration_components() {
  file_name=$1

  if [ -f $file_name ]; then
    echo "Start to import the plugins to new jenkins env"
    sudo unzip -n $file_name -d /var/lib/jenkins/
    echo "Plugins imported successfully"
    sleep 10
  else
    echo "$file_name file does not exist"
    exit 1
  fi
}

# Migrate plugins & jobs
migration_components plugins.zip
migration_components jobs.zip

# Migration nodes & worksapces
migration_components nodes.zip
migration_components workspace.zip

# Migrate the credentials
if [ -f credentials.xml ]; then
  echo "Start to import the credentials to new jenkins env"
  sudo cp credentials.xml /var/lib/jenkins/
  echo "Credentials imported successfully"
  sleep 10
else
  echo "credentials.xml file does not exist"
  exit 1
fi

# Apply the new configuration to the new jenkins
sudo chown -R jenkins:jenkins /var/lib/jenkins
sudo systemctl restart jenkins
