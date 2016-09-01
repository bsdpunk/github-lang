#!/bIN/BASh

#get token
#printf "Git: "
#read -r CMD 
#    if [ -z $CMD ]
#    then
#        CMD=""
#    else
#        CMD="?access_token=$CMD"
#    fi
#echo $CMD;
#get user
#echo ''
#printf 'Enter which github user you would like to check percentages on: '
#read -r GHUSER

#echo 'https://api.github.com/users/bsdpunk/repos'$CMD
CMD=$(cat ~/.gh)
CMD="?access_token=$CMD"
http https://api.github.com/notifications$CMD |python -m json.tool 
#sleep 1

