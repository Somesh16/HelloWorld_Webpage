node{
    def pwd
    stage('SCM Checkout'){
      git 'https://github.com/Somesh16/HelloWorld_Webpage'
    }
    stage('Compile-Package'){
      def mvnHome = tool name: 'M2_HOME', type: 'maven'
        sh "${mvnHome}/bin/mvn package"
    }
   stage('Deploying to Tomcat Server'){
     sshagent(['tomcat-server']) {
     sh 'scp -o StrictHostKeyChecking=no target/*war root@172.31.40.37:/opt/tomcat/webapps'
      }
    }
}
