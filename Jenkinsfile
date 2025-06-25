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
    }
}