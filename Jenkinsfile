node{
    stage('SCM Checkout'){
      git 'https://github.com/Somesh16/HelloWorld_Webpage'
    }
    stage('Compile-Package'){
      def mvnHome = tool name: 'M2_HOME', type: 'maven'
        sh "${mvnHome}/bin/mvn package"
    }
    stage('Deploy on tomcat server'){
  sshagent(['deployer_tomcat_user']) {
        sh "scp -o StrictHostKeyChecking=no target/*war ec2-user@13.127.202.57:/opt/tomcat/webapps" 
    }
  }      
}
