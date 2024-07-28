***Running command as User***
jp@jp:~$ cat /etc/shadow 
cat: /etc/shadow: Permission denied

**Running the command as root**
`jp@jp:~$ sudo cat /etc/shadow 
root:<SNIP>:18395:0:99999:7:::
daemon:*:17737:0:99999:7:::
bin:*:17737:0:99999:7:::
<SNIP>`
