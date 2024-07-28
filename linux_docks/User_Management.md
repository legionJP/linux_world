***Running command as User***
jp@jp:~$ cat /etc/shadow 
cat: /etc/shadow: Permission denied

**Running the command as root**
`jp@jp:~$ sudo cat /etc/shadow 
root:<SNIP>:18395:0:99999:7:::
daemon:*:17737:0:99999:7:::
bin:*:17737:0:99999:7:::
<SNIP>`

> [!NOTE]
> Useful information that users should know, even when skimming content.
> jp@jp:~$ sudo cat /etc/shadow 
> root:<SNIP>:18395:0:99999:7:::
> daemon:*:17737:0:99999:7:::
> bin:*:17737:0:99999:7:::

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.
