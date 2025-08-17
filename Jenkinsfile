pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image from current repo
                    docker.build("my-devops-project")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop & remove old container if exists
                    sh 'docker stop my-devops-container || true'
                    sh 'docker rm my-devops-container || true'

                    // Run new container on custom network
                    sh 'docker run -d --name my-devops-container --network devops-net -p 8081:80 my-devops-project'
                }
            }
        }
    }
}
