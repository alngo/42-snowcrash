### Principe

Look for user's mistake


### Walktrough

```
command:
	cat /etc/passwd | grep flag01
result:
	flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash

> Interpret this user line as follow
> <name>:<passwd>:<id>:<group_id>:<full_name>:<home_directory>:<login_shell>

> The password seems compromised: 42hDRfypTqqnw
> Decrypt password
```

### Sources

(How to list users in linux)[https://linuxize.com/post/how-to-list-users-in-linux/]
(Decipher)[https://cryptii.com/pipes/caesar-cipher]
