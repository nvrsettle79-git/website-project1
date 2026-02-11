pipeline {
    agent any 

    stages {
        stage('Build Image') {
            steps {
                // This builds your Docker image
                sh 'docker build -t my-app:develop .'
            }
        }
        stage('Run Test') {
            steps {
                // This checks if the image was created successfully
                sh 'docker images | grep my-app'
            }
        }
    }
}
