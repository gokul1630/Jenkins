pipeline{
    agent any
    stages("Pull Repository"){
        {
        stage{
            steps{
                git(url:"https://github.com/gokul1630/angular-app",branch: 'main')
            }
        }    

        stage("Log current directory"){
            steps{
                sh "ls -la"
            }
        }

        stage("Run Docker"){
            steps{
                sh "docker build -f angular-app/Dockerfile -t gokul1630/angular-app:latest ."
            }
        }

        stage("Login  to DockerHub"){
            
            steps{
                sh "docker login -u $DOCKER_USER -p $DOCKER_PASS"
            }
        }

        steps("Push Docker Image to DockerHub"){
            steps{
                sh "docker push gokul1630/angular-app:latest"
            }
        }
        }
    }
}