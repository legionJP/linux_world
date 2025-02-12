# User Management in Linux:
```
Linux is the Multiuser system ....
To manage the users there are several command for the usermanagement let's deep dive into them one by one:
```

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
1. $\color{Green}{useradd}$
   ```
   useradd command is use to adding the user with the limited permissions
   ```

$\color{Blue}{Command-Description}$
```diff
1.
+ 'sudo' 
# Execute Command as a root user
2.
+ 'su'
# The su utility requests appropriate user credentials via PAM and switches to that user ID
#  the default user is the superuser
3.
+ 'useradd'
# Creates a new user or update default new user information
4.
+ 'userdel'
# Deletes a user account and related files.
5.
+ 'usermod'
# Modifies a user account.
6.
+ 'addgroup'
# Adds a group to the system.
7.
+ 'delgroup' 
# Removes a group from the system.
8.
+ 'passwd'
# Changes user password.

```


```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
 