#!/bin/bash

# variables
sNamGit="$GIT_USER"
sUsrGit="$GIT_EMAIL"
sPwdGit="$GIT_ACCESS_TOKEN"
sRepGit="$GIT_REPO"
sLocalRepo="localRepo"
sCollectionsPath="/$sLocalRepo/src/postman/poc/collections"

sBranchPOC="master-postman"

login_git() {

    git config --global user.name $sNamGit
    git config --global user.email $sUsrGit
    git config --global credential.helper 'cache --timeout=3600'
    git clone "https://oauth2:$sPwdGit@$sRepGit" "$sLocalRepo"
    cd "$sLocalRepo"
    git checkout "$sBranchPOC"

}

echo -e "\n"
figlet "POCs"

startProcess=`date +"%A, %d-%B, %Y %H:%M:%S"`
echo -e "\n\e[1;36m¡Pruebas automatizadas con Postman!\e[0m"
echo -e "\e[1;36mInicio: \e[1;31m$startProcess \e[0m\n"

# descargar repo de Gitlab
login_git

# recorrer todos los archivos collection
for sCollectionFile in "$sCollectionsPath"/*.json; do

    if [ -f "$sCollectionFile" ]; then

        echo -e "\n\e[1;36mEjecutando collection \e[1;31m$sCollectionFile \e[0m\n"

        # ejecutar collections de postman 
        # newman run https://api.postman.com/collections/24932183-4606e037-43dd-4b3a-a1a6-2f54706d547a?access_key=PMAT-01HMZTD6HTX9H1SKGSENHVC95N 
        newman run "$sCollectionFile" \
                    --insecure \
                    --delay-request 1000 \
                    --iteration-count 5

        echo -e "\n\e[1;36mFin collection \e[1;31m$sCollectionFile \e[0m\n"

    fi

done

endProcess=`date +"%A, %d-%B, %Y %H:%M:%S"`
echo -e "\n\e[1;36mFin: \e[1;31m$endProcess \e[0m\n"
