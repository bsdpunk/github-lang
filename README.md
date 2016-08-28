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

Total LoC: 366831
AppleScript 696 0.189733%
Awk 539 0.146934%
Go 6761 1.84308%
JavaScript 8323 2.26889%
Perl 23081 6.292%
PHP 20528 5.59604%
Python 302957 82.5876%
R 1805 0.492052%
Shell 2141 0.583648
```

