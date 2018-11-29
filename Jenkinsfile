#!groovy​
pipeline {
  agent any

  stages {

    stage ('SonarQube analisis') {
      steps {
        withSonarQubeEnv ('sonarMac') {
          sh "sonar-scanner -X"
        }
      }
    }

    stage ('bundle tools') {
      steps {
        sh 'bundle install'
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

