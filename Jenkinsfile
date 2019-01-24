pipeline {
    agent any

    environment {
        USER_CREDENTIALS = credentials('gitcred')
    }

    stages {
        stage('clone') {
            steps {
                load "$JENKINS_HOME/workspace/wordpress/test.sh"
                sh "sshpass -p ${env.TARGET_PASSWD} ssh -o StrictHostKeyChecking=no ${env.TARGET_HOST}"
                sh "rm -rf ${env.DIR}"
                sh "mkdir ${env.DIR}"
                sh "git clone https://github.com/billyogendo/wordpress.git ${env.DIR}"
           }
       } 
    }
}
