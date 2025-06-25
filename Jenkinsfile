pipeline {
    agent {
        label 'built-in'
    }
    tools {
        git 'git-install'
    }

    stages {
        stage('git-pull') {
            steps {
                cleanWs()
                checkout scm
            }
        }
        stage('build-docker-image') {
            steps {
                script {
                    
                    def dockerImage = docker.build("swaraj9/nodeapp:${env.BUILD_NUMBER}")
                }
            }
        }
    }
}
