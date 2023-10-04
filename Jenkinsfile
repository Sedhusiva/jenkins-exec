pipeline {
    agent any
    
    environment {
        MY_VARIABLE = 'HelloFromJenkins'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/your-repo.git'
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
        success {
            emailext subject: 'Build Success',
                      body: 'The build was successful. Output:\n' + readFile('script.sh'),
                      to: 'your-email@example.com'
        }

        failure {
            emailext subject: 'Build Failure',
                      body: 'The build failed. Please check the Jenkins logs for details.',
                      to: 'your-email@example.com'
        }
    }
}


