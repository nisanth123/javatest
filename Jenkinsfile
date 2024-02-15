pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Checkout the code from the repository
                checkout scm
                
                // Build Docker image
                sh 'docker build -t helloworld .'
            }
        }
        
        stage('Test') {
            steps {
                // You can add your test scripts here
                sh 'echo "Running tests"ufw'
            }
        }
        
        stage('Deploy') {
            steps {
                    sh 'docker stop helloworld'
                    sh 'docker rm helloworld'
                 
                // Deploy the Docker container
                sh 'docker run --name helloworld -d -p 80:80 helloworld'
            }
        }
    }
}
