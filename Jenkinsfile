pipeline{
    agent{
        label "dev-env"
    }
    tools{
        git "git-install"
    }

    stages{
        stage("git-pull"){
            steps{
                checkout scm
            }
        }
        stage("build-docker-image"){
            steps{
                script{
                    dockerImage = docker.build("swaraj9/nodeapp:{env.BUILD_NUMBER}")
                }
                
            }
        }
    }
}