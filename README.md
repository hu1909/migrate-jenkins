# Original Problems 
Currently we have 2 instance of Jenkins 
1. Local Instance
2. Remote Instance which was hosted in Azure 

=> Because of the network and power supply of local server is not stable, so we decided to move everything from the local instance to the remote one 

# Requirement Components 
In folder **/var/lib/jenkins**, there are some folders that we need to focus:
- nodes: Contains the agent nodes configuration
- plugins: Contains the plugins that are installed in Jenkins
- jobs: Contains the jobs that are created in Jenkins
- workspace: Contains the workspace of the jobs that are created in Jenkins

Others stuff for now, it is not important, we can ignore them as in the remove instance, we also have that configuration 

# Steps to Migrate 
I have create a simple script to migrate the Jenkins from local instance to remote one but we need to prepare above folders to run the script correctly 

We need: 
- nodes.zip file 
- plugins.zip file
- jobs.zip file
- workspace.zip file
- credential.xml file which contains both credential 

Place in the same folder with the script and then we can execute the script

```
``` 

```
``` migrate-jnekins-script.sh 

 
```
```
