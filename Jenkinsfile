pipeline {
    agent any
    tools{
        jdk 'jdk'
        maven 'maven3'
    }
    // environment {
    //     SCANNER_HOME = tool 'sonar-scanner'
    // }

    stages {
        stage('Git checkout') {
            steps {
                git branch: 'master', url:'https://github.com/mohitkumar1313/spring-petclinic-maven-java11.git'
            }
        }
        stage('Complie') {
            steps {
                sh "mvn compile"
            }
        }
        stage('Test') {
            steps {
                sh "mvn test"
            }
        }
        // stage('Sonar Analysis'){
        //     steps{
        //         withSonarQubeEnv('sonar') {
        //             sh '''$SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=BoardGame -Dsonar.projectKey=BoardGame \
        //                     -Dsonar.java.binaries=. '''
        //         }
        //     }
        // }
        stage('Build') {
            steps {
                sh "mvn clean package"
            }
        
        }
    }
}    
