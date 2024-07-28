***Running command as User:***
```
jp@jp:~$ cat /etc/shadow 
cat: /etc/shadow: Permission denied
 ```

**Running the command as root:**
```
jp@jp:~$ sudo cat /etc/shadow 
root:<SNIP>:18395:0:99999:7:::
daemon:*:17737:0:99999:7:::
bin:*:17737:0:99999:7:::
```
Command	Description

![#f03c15](Sudo) 
> Execute command as a different user.

> [!NOTE]
> THE 
	

su	The su utility requests appropriate user credentials via PAM and switches to that user ID (the default user is the superuser). A shell is then executed.
useradd	Creates a new user or update default new user information.
userdel	Deletes a user account and related files.
usermod	Modifies a user account.
addgroup	Adds a group to the system.
delgroup	Removes a group from the system.
passwd	Changes user password.

> [!NOTE]
> Useful information that users should know, even when skimming content.
 

> [!TIP]
> Helpful tips will share soon

> [!IMPORTANT]
> will share/write soon


> [!WARNING]
>  will share/write when applicable

> [!CAUTION]
> will share/write when applicable
