pipeline {
    agent {lable "SLAVE-1"}

    stages {
        stage('Build') {
            steps {
                bat "docker build -t piyushmathur2000/myfirstPipeline D:\\Jenkins-slave\\slave-1\\workspace\\MyFirstPipeline"
            }
        }
        stage('Test') {
            steps {
                bat "docker rm -f mytestpipeline || true"
            }
        }
        stage('Deploy') {
            steps {
                bat "docker run -it -d -p 98:80 --name mytestpipeline piyushmathur2000/myfirstPipeline"
            }
        }
    }
}