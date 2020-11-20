node
{ 
    def mavenHome =tool name:"Maven"
    stage('Checkout code from github')
    {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'Github_Credentials', url: 'https://github.com/Somesh16/HelloWorld_Webpage.git']]])
    }
    
    stage('compile code using maven')
    {
        sh "${mavenHome}/bin/mvn compile"
    }
    
    stage('Create Package')
    {
        sh "${mavenHome}/bin/mvn package"
    }
    stage('Deploying artifacts to tomcat server')
    {
        sshagent(['Tomcat_Server']) 
        {
            sh "scp -o StrictHostKeyChecking=no target/Hello_World-0.0.1-SNAPSHOT.war ec2-user@15.206.163.253:/opt/tomcat/webapps"
        }
    }
}
