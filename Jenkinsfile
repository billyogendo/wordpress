pipeline {
    agent any

    
    stages {
        stage('connect to host1') {
            steps {
                sh "rm -rf $JENKINS_HOME/workspace/test/wordpress"
                sh "git clone https://github.com/billyogendo/wordpress.git"
                load "$JENKINS_HOME/workspace/test/wordpress/test.sh"
                sh "sshpass -p ${env.TARGET_PASSWD} ssh -o StrictHostKeyChecking=no ${env.TARGET_HOST}"
                sh "rm -rf ${env.DIR}"
                sh "mkdir ${env.DIR}"
                sh "git clone https://github.com/billyogendo/wordpress.git ${env.DIR}"
           }
       } 
        stage('connect to host2') {
            steps {
                sh "rm -rf $JENKINS_HOME/workspace/test/wordpress"
                sh "git clone https://github.com/billyogendo/wordpress.git"
                load "$JENKINS_HOME/workspace/test/wordpress/test.sh"
                sh "sshpass -p 12345 ssh -o StrictHostKeyChecking=no 34.227.163.32"
                sh "rm -rf /tmp/targetfolder"
                sh "mkdir /tmp/targetfolder"
                sh "git clone https://github.com/billyogendo/wordpress.git /tmp/targetfolder"
                
            }
        }
    }
}
