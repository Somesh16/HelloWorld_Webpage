node{
    stage('SCM Checkout'){
      git 'https://github.com/Somesh16/HelloWorld_Webpage'
    }
    stage('Compile-Package'){
      def mvnHome = tool name: 'M2_HOME', type: 'maven'
        sh "${mvnHome}/bin/mvn package"
    }
    stage('Deploying to Tomcat Server'){
     sshPublisher(publishers: [sshPublisherDesc(configName: 'tomcat_server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: 'opt/tomcat/webapps', remoteDirectorySDF: false, removePrefix: 'target', sourceFiles: 'target/Hello_World-0.0.1-SNAPSHOT.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
      }
    }
}
