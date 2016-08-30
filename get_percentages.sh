#!/bIN/BASh

#get token
printf "Enter your github token, if you have one. Otherwise hit enter: "
read -r CMD 
    if [ -z $CMD ]
    then
        CMD=""
    else
        CMD="?access_token=$CMD"
    fi
#echo $CMD;
#get user
echo ''
printf 'Enter which github user you would like to check percentages on: '
read -r GHUSER

#echo 'https://api.github.com/users/bsdpunk/repos'$CMD
http https://api.github.com/users/$GHUSER/repos$CMD |python -m json.tool | egrep '"name"|"fork"' > list
#sleep 1
cat list | sed '/true/,+1d' | grep '"name"' | awk -F: '{print $0}' | tr -d '{' | tr -d '}' | tr -d '"' |sort | grep -v '^$'  | sed 's/^.*name://gi' | tr -d ',' >> repos
for i in $(cat repos); do echo '' >> lang && http https://api.github.com/repos/$GHUSER/$i/languages$CMD >> lang; done;
awk -F, '{print $0}' lang | tr -d '{' | tr -d '}' | tr -d '"'| tr ' ' '\n' |sort | grep -v '^$' | tr -d ',' >> preclean
cat preclean |perl -pe "s/(\d+|\d)([A-Za-z])/\1\n\2/gi" | grep -v 'HTML'| grep -v 'CSS' | sort >> clean
#cat clean
#cat list
#cat lang
#cat repos
#cat preclean
bash tottals.awk
bash output.awk > loc.csv
Rscript locgraph.R $GHUSER 2>&1 >/dev/null
rm -rf list 
rm -rf repos
rm -rf lang
rm -rf clean
rm -rf preclean
rm -rf loc.csv
