node{
    stage('SCM Checkout'){
      git 'https://github.com/Somesh16/HelloWorld_Webpage'
    }
    stage('Compile-Package'){
      def mvnHome = tool name: 'M2_HOME', type: 'maven'
        sh "${mvnHome}/bin/mvn package"
    }
  sshagent(['deployer_tomcat_user']) {
   sh "scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@35.154.98.31:/opt/tomcat/webapps" 
   
    }
}
