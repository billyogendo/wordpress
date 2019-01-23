pipeline {
    agent any

    environment {
        USER_CREDENTIALS = credentials('gitcred')
    }

    stages {
        stage('clone') {
            steps {
                sh "sshpass -p '12345' ssh -o StrictHostKeyChecking=no muinde@54.174.22.138"
                sh "rm -rf /tmp/targetfolder"
                sh "mkdir /tmp/targetfolder"
                sh "git clone https://github.com/billyogendo/wordpress.git/ tmp/targetfolder"
           }
       } 
    }
}
