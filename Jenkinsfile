pipeline{
    agent any
    stages {
    
        stage('Settup Python Virtual Environment'){
       
            steps {
                sh '''
                chmod +x envsetup.sh
                ./envsetup.sh
                '''
            }
        }
        // stage('Setup Gunicorn Setup'){
        //     steps {
        //         sh '''
        //         chmod +x gunicorn.sh
        //         ./gunicorn.sh
        //         '''
        //     }
        // }
        // stage('setup NGINX'){
        //     steps {
        //         sh '''
        //         chmod +x nginx.sh
        //         ./nginx.sh
        //         '''
        //     }
        // }
    }
}
