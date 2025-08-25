pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t devops_project .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh 'docker stop devops_container || true'
                    sh 'docker rm devops_container || true'

                    sh 'docker run -d devops_project'
                }
            }
        }
    }
}
