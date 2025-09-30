pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/<your-username>/<your-repo>.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t simple-web-app .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop old container if exists
                    sh 'docker rm -f simple-web-app || true'

                    // Run new container
                    sh 'docker run -d -p 8080:80 --name simple-web-app simple-web-app'
                }
            }
        }
    }
}
