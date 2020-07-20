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
                    bat(script: "Compress-Archive chef_server/chef-repo/cookbooks/apahce_cookbook MyPolicies-7.20.${BUILD_NUMBER}.zip")
                    bat(script:"jfrog rt c rt-server-1 --url=http://192.168.33.113:8081/artifactory --user=admin --password=Cricket1234567!!")
                    bat(script:"jfrog rt u *.zip Policies")
                    bat(script: "./test.ps1")
            }
        }
    }
}
