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
                invokeLambda([awsRegion: 'eu-west-1',
			functionName: 'ajay', 

	}
}
            }
        }
    
}
}
