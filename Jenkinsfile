pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                docker.build("devops_project")
            }
        }

        stage('Run Container') {
            steps {
                
                    sh 'docker stop devops_container || true'
                    sh 'docker rm devops_container || true'
                    sh 'docker run -d -p 8081:80 --name devops_container devops_project'
                
            }
        }
    }
}
