# github-lang


```
http https://api.github.com/users/bsdpunk/repos |python -m json.tool| grep '"name"' | awk -F: '{print $2}' | tr -d \" | tr -d , > repos
```

```
awk -F, '{print $1, $2, $3, $4}' cleanedup | tr -d '{' | tr -d '}' | sort
```

```
 awk -F, '{print $1, $2, $3, $4}' cleanedup | tr -d '{' | tr -d '}' | tr -d '"'| tr ' ' '\n' |sort | grep -v '^$'
```

```
cat beastie | egrep '"name"|fork"' | grep -A1 'true' | grep name
```
