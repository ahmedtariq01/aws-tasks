pipeline {
    agent any

    tools {nodejs "node"}

    stages {
        stage('Install'){
            steps {
                git branch: 'main', credentialsId: 'c00a637a-9d61-4b3b-8c56-06fd0a5cd02d', url: 'https://github.com/ahmedtariq01/aws-tasks'
                bat 'npm run lint'
                bat 'npm run prettier'
            }
        }
    }
}