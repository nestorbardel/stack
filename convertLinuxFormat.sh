BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
NORMAL="\033[0;39m"
echo -e "$YELLOW ############# Convert File Format ################"
echo -e "$YELLOW ###################################################"
echo -e "$NORMAL"

dos2unix build.sh
dos2unix portainer.sh
dos2unix remove_images_containers.sh
dos2unix remove_stack.sh
dos2unix run.sh
cd ./apache2.4+php
dos2unix buildDockerImage.sh
cd ../apache_apigateway
dos2unix buildDockerImage.sh
cd ../apache_delphi_application
dos2unix buildDockerImage.sh
cd ../apache_microservice_search
dos2unix buildDockerImage.sh
cd ../apache_microservice
dos2unix buildDockerImage.sh
cd ../apache_p2p_application
dos2unix buildDockerImage.sh
cd ../mongodb_delphi
dos2unix buildDockerImage.sh
cd ../elastic_search
dos2unix buildDockerImage.sh
cd ../mysql
dos2unix buildDockerImage.sh
cd ../redis
dos2unix buildDockerImage.sh

