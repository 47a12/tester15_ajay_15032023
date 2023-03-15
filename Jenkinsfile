pipeline{
    agent any
    stages{
        stage("TF Init"){
            steps{
                sh "terraform init"
            }
        }
        stage("TF Validate"){
            steps{
                sh "terraform validate"
            }
        }
        stage("TF Plan"){
            steps{
                sh "terraform plan"
            }
        }
        stage("TF Apply"){
            steps{
                sh "terraform apply "
            }
        }
        stage("Invoke Lambda"){
            steps{
                 sh "(script: "aws lambda invoke \
                    --function-name 'terminate-instance' \
                    --invocation-type Event \
                    --payload '{ \"private_ip_address\":\"${instance_ip}\" }' \
                    /tmp/response.json")"
            }
        }
    }
}
