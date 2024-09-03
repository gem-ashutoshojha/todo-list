pipeline {
  agent any
  stages {
    stage('Build image') {
      steps {
        echo 'Starting to build docker image'
        script {
          str = env.BRANCH_NAME
          tag = str.replaceAll( '/', '_' )
          def customImage = docker.build("ashutoshojha5/todo-list:${tag}")
          customImage.push()
        }
      }
    }
  }
}