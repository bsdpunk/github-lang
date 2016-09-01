#!/bIN/BASh

#get token
#printf "Git: "
#read -r GTOKEN 
#    if [ -z $GTOKEN ]
#    then
#        GTOKEN=""
#    else
#        GTOKEN="?access_token=$GTOKEN"
#    fi
#echo $GTOKEN;
#get user
#echo ''
#printf 'Enter which github user you would like to check percentages on: '
#read -r GHUSER

#echo 'https://api.github.com/users/bsdpunk/repos'$GTOKEN
GTOKEN=$(cat ~/.gh)
GTOKEN="?access_token=$GTOKEN"
http https://api.github.com/notifications$GTOKEN |python -m json.tool | grep -A5 subject

#sleep 1

