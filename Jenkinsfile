#!groovy​
def rvmSh(String rubyVersion, String cmd) {
    def sourceRvm = 'source ~/.rvm/scripts/rvm'
    def useRuby = "rvm use --install $rubyVersion"
    sh "${sourceRvm}; ${useRuby}; $cmd"
}

pipeline {
  agent any

  environment {
    SONAR_RUNNER = "/var/jenkins_home/tools/hudson.plugins.sonar.SonarRunnerInstallation/SonarQubeScanner/bin"
  }

  stages {
    stage ('bundle tools') {
      steps {
        rvmSh 'ruby --version'
        rvmSh "gem install bundler"
        rvmSh "bundle tools"
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

