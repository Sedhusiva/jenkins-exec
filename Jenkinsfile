pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Sedhusiva/jenkins-exec.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('jenkins-exec')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.run('jenkins-exec')
                }
            }
        }
    }

    post {
        success {
            emailext subject: 'Build Success',
                      body: 'The build was successful.',
                      to: 'sivasanthi.svs@gmail.com'
        }

        failure {
            emailext subject: 'Build Failure',
                      body: 'The build failed. Please check the Jenkins logs for details.',
                      to: 'sivasanthi.svs@gmail.com'
        }
    }
}

