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
                dir("/mnt/dev-env-ws"){
                checkout scm
                }
            }
        }
    }
}