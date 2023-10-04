pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Sedhusiva/jenkins-exec.git'
            }
        }

         stage('Build') {
             steps {
        
        sh 'docker build -t simplescript .'
        sh 'docker tag simplescript $DOCKER_MY_VARIABLE'
      }
    }

         stage('Deploy') {
             steps {
        withCredentials([usernamePassword(credentialsId: "${DOCKER_REGISTRY_CREDS}", passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
          sh "echo \$DOCKER_PASSWORD | docker login -u \$DOCKER_USERNAME --password-stdin docker.io"
          sh 'docker push $DOCKER_MY_VARIABLE'
        }
      }
    }
  }
    post {
    always {
      sh 'docker run --name mysimplescript -d -p 3000:5000 simplescript'
    }
  }
}

