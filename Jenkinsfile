pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               git 'https://github.com/Sedhusiva/jenkins-exec.git'
            }
        }

        stage('Build and Run Script') {
            steps {
                script {
                    sh 'docker build -t script.sh'
                    sh 'bash script.sh'
                }
            }
        }
    }

    post {
      always {
           mail to: "sivasanthi.svs@gmail.com",
           subject: "Notification Mail From Jenkins",
           body: "CiCd pipeline"
    }
  }
}

