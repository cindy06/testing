pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        build(job: 'building', quietPeriod: 3, wait: true)
      }
    }
    stage('deploy') {
      steps {
        powershell 'test.sh'
      }
    }
  }
}