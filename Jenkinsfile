pipeline{
    agent any
    stages{
        stage('clean'){
            steps{
                powershell(script:"Remove-Item *.zip") 
            }
        }
        stage('lint'){
            steps{
                powershell(script:"cookstyle -a")
            }
        }
        stage('deploy'){
            steps{
                    powershell(script: "Compress-Archive chef_server/chef-repo/cookbooks/apahce_cookbook MyPolicies-7.20.${BUILD_NUMBER}.zip")
                    powershell(script:"jfrog rt c rt-server-1 --url=http://192.168.33.113:8081/artifactory --user=admin --password=Cricket1234567!!")
                    powershell(script:"jfrog rt u *.zip Policies")
                    //powershell(script: "cd 'C:/Program Files (x86)/Jenkins/workspace/Jenkins_pipeline' ;./test.ps1")
            }
        }
    }
}
