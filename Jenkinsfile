pipeline {
  agent any
  stages {
    stage('build') {
      steps {
         powershell 'docker_image.sh'
      }
    }
  }
}
