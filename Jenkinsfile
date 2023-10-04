pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
               sh 'docker build -t script.sh'
            }
        }

        stage('Run Script') {
            steps {
                script {
                    sh 'bash script.sh'
                }
            }
        }
    }

    post {
      always {
           mail to: "sivasanthi.svs@gmail.com",
           subject: "Notification Mail From Jenkins",
           body: "The Simplescript Pipeline project Automatic Notification While any change made in commit."
    }
  }
}

