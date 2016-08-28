# github-lang
Get language usage statistics on a github user.
Does not count forked projects.
Does not count HTML or CSS as a language.

Best use with a github token.

```
bash get_percentages.sh
```

Will ask if you have a token, then ask for the user you want.



```
$ bash get_percentages.sh 
Enter your github token, if you have one. Otherwise hit enter: 

Enter which github user you would like to check percentages on: bsdpunk

Total LoC: 364832
AppleScript 696 0.190773%
Go 6761 1.85318%
JavaScript 8323 2.28132%
Perl 22165 6.0754%
PHP 20528 5.6267%
Python 302957 83.0401%
R 1805Shell 0.494748%
Shell 1597Awk 0.437736%
```

