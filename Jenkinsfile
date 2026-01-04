pipeline {
    agent { label 'built-in' } 

    environment {
        IMAGE = "adityakul548/hello-k8s:latest"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Aditya422-ai/devops-k8s-task.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE .'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(
                  credentialsId: 'dockerhub-creds',
                  usernameVariable: 'DOCKER_USER',
                  passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push $IMAGE'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
               withCredentials([string(credentialsId: 'kubeconfig', variable: 'KCFG')]) {
    sh '''
      echo "$KCFG" > kubeconfig
      export KUBECONFIG=$PWD/kubeconfig
      kubectl apply -f k8s/
      kubectl rollout status deployment hello-deployment
    '''
}

            }
        }
    }
}
