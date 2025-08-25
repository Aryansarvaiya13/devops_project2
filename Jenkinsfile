pipeline {
    agent any

    environment {
        IMAGE_NAME = "devops_project"
        CONTAINER_NAME = "devops_container"
        HOST_PORT = "8081"
        CONTAINER_PORT = "80"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    try {
                        sh "docker build -t ${IMAGE_NAME} ."
                    } catch (err) {
                        echo "Docker build failed: ${err}"
                        currentBuild.result = 'FAILURE'
                        error("Stopping pipeline due to Docker build failure")
                    }
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    try {
                        // Stop & remove existing container if it exists
                        sh "docker stop ${CONTAINER_NAME} || true"
                        sh "docker rm ${CONTAINER_NAME} || true"

                        // Run the new container
                        sh "docker run -d -p ${HOST_PORT}:${CONTAINER_PORT} --name ${CONTAINER_NAME} ${IMAGE_NAME}"
                    } catch (err) {
                        echo "Docker run failed: ${err}"
                        currentBuild.result = 'FAILURE'
                        error("Stopping pipeline due to Docker run failure")
                    }
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline finished. Check Docker containers with 'docker ps'."
        }
        failure {
            echo "Build or deployment failed!"
        }
        success {
            echo "Docker image built and container started successfully!"
        }
    }
}
