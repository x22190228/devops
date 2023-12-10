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

        
    }
}
