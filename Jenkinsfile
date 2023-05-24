 pipeline{
    agent any
    environment {
        PATH = "/opt/maven/bin:$PATH"
    }
    stages{
        stage('code checkout') {
          steps{
            git credentialsId: 'git_credentials', url: 'https://github.com/mohankumar-putta/mwebrepo.git'
            echo'code checkout completed successfully'
            }
        }
        stage('code build') {
          steps{
            sh'mvn clean package'
            echo'code build completed successfully'
            }
        }
        stage('code deploy') {
          steps{
            sshagent(['ssh_agent']) {
            sh 'scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/pjob-2/webapp/target/webapp.war ec2-user@18.234.218.27:/opt/apache-tomcat-9.0.75/webapps'
             }
          }
        }
    }
}
