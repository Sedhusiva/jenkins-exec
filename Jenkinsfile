pipeline {
    agent any
    
    environment {
        MY_VARIABLE = 'HelloFromJenkins'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Sedhusiva/jenkins-exec.git'
            }
        }

        stage('Build and Run Script') {
            steps {
                script {
                    // Set an environmental variable for the script
                    sh 'export MY_VARIABLE=$MY_VARIABLE'
                    
                    // Execute the script
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

