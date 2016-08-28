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

Total LoC: 367568
AppleScript 696 0.189353%
Awk 539 0.14664%
Go 6761 1.83939%
JavaScript 8323 2.26434%
Perl 23081 6.27938%
PHP 20528 5.58482%
Python 302957 82.422%
R 1891 0.514463%
Shell 2792 0.759587%
```
![BSDPunk LOC Graph](loc.png)
