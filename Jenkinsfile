#!groovy​
pipeline {
  agent any

  environment {
    SONAR_RUNNER = "/var/jenkins_home/tools/hudson.plugins.sonar.SonarRunnerInstallation/SonarQubeScanner/bin"
  }

  stages {
    stage ('bundle tools') {
      steps {
        sh "gem install bundler"
        sh "bundle tools"
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

