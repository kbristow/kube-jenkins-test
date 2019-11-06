# Jenkins Kubernetes Application Test
This repository is an example of building an application that can be built and deployed to Kubernetes through Jenkins.

## Jenkinsfile
The Jenkinsfile is found at `jenkins/Jenkinsfile` and uses the Kubernetes Jenkins plugin to create a dynamic agent to build
the source image. It uses helm 3 to deploy the application and a custom deployer script to monitor the result of the helm
operation.

## Helm Chart
The helm chart is located at `charts` and is based on the `maven` chart from https://github.com/jenkins-x-buildpacks/jenkins-x-kubernetes/tree/master/packs.
