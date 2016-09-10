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
printf 'Enter which github user: '
read -r GHUSER
printf 'Enter which github Repo: '
read -r REPO


#echo 'https://api.github.com/users/bsdpunk/repos'$GTOKEN
GTOKEN=$(cat ~/.gh)
GTOKEN="?access_token=$GTOKEN"
echo https://api.github.com/repos/$GHUSER/$REPO/stats/code_frequency$GTOKEN
http https://api.github.com/repos/$GHUSER/$REPO/pulls$GTOKEN |python -m json.tool 

#sleep 1

#http https://api.github.com/repos/bsdpunk/trash/stats/participation?access_token=
