/*node {

  def mavenHome = tool name: 'maven3.9.0'
  
  stage('SCM Clone') {
    git branch: 'main', url: 'https://github.com/Depuis2031/maven-web-application.git'
  }

  stage('MavenBuild') {
    sh "${mavenHome}/bin/mvn clean package"
  }

  stage('Quality Report') {
    //sh "${mavenHome}/bin/mvn sonar:sonar"
  }

  stage('NexusUpload') {
    //sh "${mavenHome}/bin/mvn deploy"
  }

  stage('BuildDockerImage') {
    sh "docker build -t isaacoluwade/spring-boot-mongo:v2 ."
  }

  stage('DockerPush') {

    withCredentials([string(credentialsId: 'DockerHubCredentials', variable: 'DockerHubCredentials')]) {
        sh "docker login -u isaacoluwade -p ${DockerHubCredentials}"
}    


    sh "docker push isaacoluwade/spring-boot-mongo:v2"
  }
  
  stage('RemoveDockerImages'){

    sh 'docker rmi $(docker images -q)'
  }
 
  stage('deployToKubenetes'){

     sh "kubectl apply -f springapp.yml "
  }
}*/

pipeline{
  agent any 
  tools {
    maven "maven3.9.0"
  }  
  stages {
    stage('1GetCode'){
      steps{
        sh "echo 'cloning the latest application version' "
        git branch: 'master',url: 'https://github.com/Depuis2031/maven-web-application.git'
      }
    }
    stage('3Test+Build'){
      steps{
        sh "echo 'running JUnit-test-cases' "
        sh "echo 'testing must passed to create artifacts ' "
        sh "mvn clean package"
      }
    }
     stage('BuildDockerImage') {
       steps{
        sh "docker build -t depuis2031/java-web-app:1  ."
    
       }
      }
     stage('DockerPush') {
       steps{
         withCredentials([usernameColonPassword(credentialsId: 'docker-Cred', variable: 'doker-Cred')]) {
          sh "docker push depuis2031/java-web-app:1" 
        }  
       }
      stage('RemoveDockerImages'){
          steps{
           sh 'docker rmi $(docker images -q)'
      }
    }     
    /*
    stage('4CodeQuality'){
      steps{
        sh "echo 'Perfoming CodeQualityAnalysis' "
        sh "mvn sonar:sonar"
      }
    }
    stage('5uploadNexus'){
      steps{
        sh "mvn deploy"
      }
    } 
    stage('8deploy2prod'){
      steps{
        deploy adapters: [tomcat8(credentialsId: 'tomcat-credentials', path: '', url: 'http://35.170.249.131:8080/')], contextPath: null, war: 'target/*war'
      }
    }
}
  post{
    always{
      emailext body: '''Hey guys
Please check build status.

Thanks
Landmark 
+1 437 215 2483''', recipientProviders: [buildUser(), developers()], subject: 'success', to: 'paypal-team@gmail.com'
    }
    success{
      emailext body: '''Hey guys
Good job build and deployment is successful.

Thanks
Landmark 
+1 437 215 2483''', recipientProviders: [buildUser(), developers()], subject: 'success', to: 'paypal-team@gmail.com'
    } 
    failure{
      emailext body: '''Hey guys
Build failed. Please resolve issues.

Thanks
Landmark 
+1 437 215 2483''', recipientProviders: [buildUser(), developers()], subject: 'success', to: 'paypal-team@gmail.com'
    }
  } 
  */
}
}
