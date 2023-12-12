pipeline{
    agent any
    stages {
    
        stage('Setup Django Python Virtual Environment'){
            steps {
                sh '''
                chmod +x djangosetup.sh
                ./djangosetup.sh
                '''
            }
        }
        stage('Setup Gunicorn for Django Connection'){
            steps {
                sh '''
                chmod +x djangogunicorn.sh
                ./djangogunicorn.sh
                '''
            }
        }
        stage('setup NGINX Proxy Server'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
    }
}
