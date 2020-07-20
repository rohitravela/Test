cd "C:\Program Files (x86)\Jenkins\workspace\Jenkins_pipeline"

jfrog rt c rt-server-1 --url=http://192.168.33.113:8081/artifactory --user=admin --password=Cricket1234567!!

jfrog rt u *.zip Policies
