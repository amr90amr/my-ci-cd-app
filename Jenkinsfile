pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building Application..."
            }
        }

        stage('Deploy Dev') {
            when {
                branch 'dev'
            }
            steps {
                sh 'kubectl apply -f ./k8s/dev/'
            }
        }

        stage('Deploy Test') {
            when {
                branch 'test'
            }
            steps {
                sh 'kubectl apply -f ./k8s/test/'
            }
        }

        stage('Deploy Prod') {
            when {
                branch 'prod'
            }
            steps {
                sh 'kubectl apply -f ./k8s/prod/'
            }
        }
    }
}
