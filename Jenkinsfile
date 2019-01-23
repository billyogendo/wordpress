pipeline {
    agent any

    environment {
        USER_CREDENTIALS = credentials('gitcred')
    }

    stages {
        stage('clone') {
            steps {
                sh "sshpass -p $( env.TARGET_PASSWD) ssh -o StrictHostKeyChecking=no $(env.TARGET_HOST)"
                sh "rm -rf /tmp/targetfolder"
                sh "mkdir /tmp/targetfolder"
                sh "git clone https://github.com/billyogendo/wordpress.git /tmp/targetfolder"
           }
       } 
    }
}
