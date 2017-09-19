pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                withMaven(maven: 'maven_3.5.0')
                
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

