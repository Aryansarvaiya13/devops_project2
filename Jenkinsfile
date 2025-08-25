pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("devops_project")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh 'docker stop devops_container || true'
                    sh 'docker rm devops_container || true'

                    sh 'docker run -d --name devops_container --network devops-net -p 9000:80 devops_project'
                }
            }
        }
    }
}
