pipeline {
    agent any
    stages {
        stage('TF-INIT') {
            steps {
                dir("app_db/rds") {                       
                sh 'terraform init'
            }
        }
    }
        stage('TF-VALIDATE') {
            steps {
                dir("app_db/rds") {
                sh 'terraform validate'
            }
        }
    }
        stage('TF-FMT') {
            steps {
                dir("app_db/rds") {
                sh 'terraform fmt'
            }
        }
    }
        stage('TF-PLAN') {
            steps {
                dir("app_db/rds") {
                sh 'terraform plan'
            }
        }
    }
}
    post {
        always {
            echo "### CLEARNING WORKSPACE ###"
            cleanWs()
        }
    }
}