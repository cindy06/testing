#!/bin/bash
echo "Install Bluemix CLI"
wget  http://public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli/Bluemix_CLI_0.5.5_amd64.tar.gz --quiet
tar -xzvf Bluemix_CLI_0.5.5_amd64.tar.gz
chmod 755 ./Bluemix_CLI/bin/bluemix
sudo ./Bluemix_CLI/install_bluemix_cli

echo "install plugin"
bx plugin install container-registry -r Bluemix
bx login -a https://api.ng.bluemix.net -u "xinxli@cn.ibm.com" -p "vbfgrt45" -o "xinxli@cn.ibm.com" -s "space1"
# bx cr namespace-add <my_namespace>
bx cr login

docker build -t cindy/test-api:1.0.3 .
docker push registry.ng.bluemix.net/cindy/test-api:1.0.3
