pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    stages{
           stage('Git checkout'){
            steps{
               git branch: 'main', credentialsId: 'JENKINS', url: 'https://github.com/Talhaasan/go-services/'
                }
            }
           stage('AWS credentials') {
            steps {
                withAWS(credentials: 'DevOpsUser', region: 'us-east-1') {
                     sh '''
                       cd terraform/rmq/
                       terraform init
                     '''
                      sh '''
                       cd terraform/rmq/
                       terraform apply -auto-approve
                    '''

                }
            }
        }
    }
}
