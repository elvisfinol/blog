#!/bin/zsh

vared -p "Enter commit message " -c message

printf "\e[33m\nBuuilding project...\e[39m\n"

hugo -d docs

printf "\e[33m\nPushing to elvis.finol.github.io repository...\e[39m\n"

git add .

git commit -m "$message"

git push origin master

printf "\e[33m\nSuccessfully deployed!\e[39m\n"
