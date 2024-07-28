-***Running command as User:***

```
jp@jp:~$ cat /etc/shadow 
cat: /etc/shadow: Permission denied
 ```
-***Running the command as root:***
```
jp@jp:~$ sudo cat /etc/shadow 
root:<SNIP>:18395:0:99999:7:::
daemon:*:17737:0:99999:7:::
bin:*:17737:0:99999:7:::
```
Command	Description
```diff
1.
+Sudo
$\color{green}{test}$
# Execute Command as a root user
2.
+ su
# The su utility requests appropriate user credentials via PAM and switches to that user ID
#  the default user is the superuser
3.
+ useradd
# Creates a new user or update default new user information
4.
+ userdel
# Deletes a user account and related files.
5.
+ usermod
# Modifies a user account.
6.
+ addgroup
# Adds a group to the system.
7.
+ delgroup 
# Removes a group from the system.
8.
+ passwd
# Changes user password.

```


```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
 

su. A shell is then executed.
useradd	Creates a new user or update default new user information.

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
