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
                stash name: 'node-deps', includes: 'package.json, package-lock.json'
            }
        }
        stage('build-docker-image') {
            agent { label 'dev-env' }
            tools {
                git 'git-install'
            }
            steps {
                script {
                    unstash 'node-deps'
                    dockerImage = docker.build("swaraj9/nodeapp:${env.BUILD_NUMBER}")
                }
            }
        }
    }
}
