#!groovy​
pipeline {
  agent any

  environment {
    SONAR_RUNNER = "/var/jenkins_home/tools/hudson.plugins.sonar.SonarRunnerInstallation/SonarQubeScanner/bin"
  }

  stages {

    stage('Install dependencies') {
        node {
            checkout scm
             withRvm('ruby-2.3.8') {
                sh 'bundle -v || gem install bundler'
                sh 'bundle install'
                stash includes: 'Gemfile.lock, .bundle', name: 'bundle'
            }
        }
    }
  }
}

def bundle_exec(command) {
    sh "bundle exec ${command}"
}

def isRelease() {
    false // FIXME: Building git tags is not yet supported (JENKINS-34395)
}

def name() {
    node {
        def matcher = readFile('packer-client.gemspec') =~ "spec.name += '(.+)'"
        matcher ? matcher[0][1] : null
    }
}

def version() {
    node {
        def matcher = readFile('lib/packer/version.rb') =~ "VERSION = '(.+)'"
        matcher ? matcher[0][1] : null
    }
}

def withRvm(version, cl) {
    withRvm(version, "executor-${env.EXECUTOR_NUMBER}") {
        cl()
    }
}

def withRvm(version, gemset, cl) {
    RVM_HOME='$HOME/.rvm'
    paths = [
        "$RVM_HOME/gems/$version@$gemset/bin",
        "$RVM_HOME/gems/$version@global/bin",
        "$RVM_HOME/rubies/$version/bin",
        "$RVM_HOME/bin",
        "${env.PATH}"
    ]
    def path = paths.join(':')
    withEnv(["PATH=${env.PATH}:$RVM_HOME", "RVM_HOME=$RVM_HOME"]) {
        sh "#!/bin/bash\nset +x; source $RVM_HOME/scripts/rvm; rvm use --create --install --binary $version@$gemset"
    }
    withEnv([
        "PATH=$path",
        "GEM_HOME=$RVM_HOME/gems/$version@$gemset",
        "GEM_PATH=$RVM_HOME/gems/$version@$gemset:$RVM_HOME/gems/$version@global",
        "MY_RUBY_HOME=$RVM_HOME/rubies/$version",
        "IRBRC=$RVM_HOME/rubies/$version/.irbrc",
        "RUBY_VERSION=$version"
    ]) {
        cl()
    }
}