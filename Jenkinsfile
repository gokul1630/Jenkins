pipeline{
    agent any
    stages{
        stage("Pull Repository"){
            steps{
                git(url:"https://github.com/gokul1630/Jenkins",branch: 'main')
            }
        }    

        stage("Log current directory"){
            steps{
                sh "ls -la"
            }
        }

        stage("Run Docker"){
            steps{
                sh "docker build -t gokul1630/angular-app:latest ."
            }
        }

        stage("Login  to DockerHub"){
            steps{
                sh "docker login -u $DOCKER_USER -p $DOCKER_PASS"
            }
        }

        stage("Push Docker Image to DockerHub"){
            steps{
                sh "docker push gokul1630/angular-app:latest"
            }
        }
    }
}