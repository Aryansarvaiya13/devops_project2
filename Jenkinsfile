pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("my-devops-project")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh 'docker stop my-devops-container || true'
                    sh 'docker rm my-devops-container || true'

                    sh 'docker run -d --name my-devops-container --network devops-net -p 8081:80 my-devops-project'
                }
            }
        }
    }
}
