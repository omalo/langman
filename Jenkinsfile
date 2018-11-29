#!groovy​
pipeline {
  agent any

  environment {
    SONAR_RUNNER = "/var/jenkins_home/tools/hudson.plugins.sonar.SonarRunnerInstallation/SonarQubeScanner/bin"
  }

  stages {
    stage ('cucumber') {
      steps {
        sh "cucumber"
      }
    }
  stage ('rspec') {
      steps {
        sh "rspec"
      }
    }
  }
}

