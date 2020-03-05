### Principe

Look for user's mistake


### Walktrough

```
command:
	find / -user flag00 2>/dev/null
result:
	/usr/sbin/john
	/rofs/usr/sbin/john

*) "2>/dev/null" mean `error output redirected to blackhole` (linux standard)
*) "/rofs" folder is a mount directory, can be ignored

> Check the permission

command:
	ls -la /usr/sbin/john
result:
	----r--r-- 1 flag00 flag00 15 Mar  5  2016 /usr/sbin/john

> Read the file

command:
	cat /usr/sbin/john
result:
	cdiiddwpgswtgt

> Decrypt the string with several ceasar cipher

command:
	cat /usr/sbin/john | tr ‘p-za-oP-ZA-O’ ‘a-zA-Z’
result:
	nottoohardhere

*) shift 15
```

### Sources


(How to i find all the file owned by a user)[https://www.cyberciti.biz/faq/how-do-i-find-all-the-files-owned-by-a-particular-user-or-group/]
(Decoding rot using echo and tr)[https://www.chmag.in/articles/momsguide/decoding-rot-using-the-echo-and-tr-commands-in-your-linux-terminal/]
man find
(Decipher)[https://cryptii.com/pipes/caesar-cipher]
