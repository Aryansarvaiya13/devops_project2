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
<<<<<<< HEAD
                script {
<<<<<<< HEAD
                    try {
                        sh "docker build -t ${IMAGE_NAME} ."
                    } catch (err) {
                        echo "Docker build failed: ${err}"
                        currentBuild.result = 'FAILURE'
                        error("Stopping pipeline due to Docker build failure")
                    }
=======
                    sh 'docker build -t devops_project:latest . '
>>>>>>> 54a1a179967a49a26cf4df171d67822a059270e1
                }
=======
                sh 'docker build -t devops_project .'
>>>>>>> 74d923bf704bb52defb4efef4b675c19c996a2ae
            }
        }

        stage('Run Container') {
            steps {
<<<<<<< HEAD
                script {
<<<<<<< HEAD
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
=======
                    sh 'docker stop devops_container || true'
                    sh 'docker rm devops_container || true'

                    sh 'docker run -d --name devops_container --network devops-net -p 9000:80 my-devops-project'
>>>>>>> 54a1a179967a49a26cf4df171d67822a059270e1
                }
=======
                
                    sh 'docker stop devops_container || true'
                    sh 'docker rm devops_container || true'
                    sh 'docker run -d -p 8081:80 --name devops_container devops_project'
                
>>>>>>> 74d923bf704bb52defb4efef4b675c19c996a2ae
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
