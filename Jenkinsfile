#!groovy​
pipeline {
  agent any

  environment {
    SONAR_RUNNER = "/var/jenkins_home/tools/hudson.plugins.sonar.SonarRunnerInstallation/SonarQubeScanner/bin"
  }

  stages {
    stage ('bundle tools') {
      steps {
        sh '''#!/bin/bash -l
            rvm use 2.3.8
            bundle install
            '''
      }
    }

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

