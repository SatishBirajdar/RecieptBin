pipeline {

  stages {
    stage('Dependencies') {
      steps {
        sh 'bundle install'
      }
    }
    stage('Unit Tests') {
      steps {
        sh 'bundle exec fastlane test_unit'
      }
    }
    stage('UI Tests') {
      steps {
        sh 'bundle exec fastlane test_ui'
      }
    }
  }
}
