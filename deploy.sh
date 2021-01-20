#!/bin/sh
printf "\e[33m\nBuuilding project...\e[39m\n"

hugo -d docs

printf "\e[33m\nPushing to elvis.finol.github.io repository...\e[39m\n"

git add .

DATE=$(date)

git commit -m "changes made on $DATE"

git push

osacript -e "display notification 'pushed to remote' with tittle 'SUCCESS'" 

printf "\e[33m\nSuccessfully deployed!\e[39m\n"
