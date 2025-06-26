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
        stage('run-image') {
            steps {
                script {
                    sh "docker run -itdp 88:27017 --name c${env.BUILD_NUMBER} swaraj9/nodeapp:${env.BUILD_NUMBER}"
                }
            }
        }
    }
}
