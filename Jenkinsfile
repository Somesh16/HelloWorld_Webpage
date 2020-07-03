node{
    stage('SCM Checkout'){
      git 'https://github.com/Somesh16/HelloWorld_Webpage'
    }
    stage('Compile-Package'){
      def mvnHome = tool name: 'M2_HOME', type: 'maven'
        sh "${mvnHome}/bin/mvn package"
    }
  sshagent(['deployer_tomcat_user']) {
   sh "-o StrictHostKeyChecking=no ec2-user@35.154.98.31: cd /opt/tomcat"   
    }
}
