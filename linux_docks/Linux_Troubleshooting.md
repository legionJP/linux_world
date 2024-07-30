 ## Troubleshooting Commands

 ```diff
+TOP

top is a task manager or system monitor program, 
```
### Statics Section

```
top - 15:42:01 up 32 min,  1 user,  load average: 0.72, 0.62, 0.85
Tasks: 273 total,   1 running, 272 sleeping,   0 stopped,   0 zombie
%Cpu(s):  3.1 us,  0.9 sy,  0.0 ni, 95.3 id,  0.7 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   7855.7 total,   2306.7 free,   2767.2 used,   2781.8 buff/cache
MiB Swap:      0.0 total,      0.0 free,      0.0 used.   4547.9 avail Mem 

```
 
> [!NOTE]
> #### Statics Section 1: <br>
> 1. Load Average: If you have the 1 core cpu and load average is 1, means it is using the 100% cpu. <br>
> 2. Tasks: 274 total,   1 running, 273 sleeping,   0 stopped,   0 zombie----(for zombie/child processes please go through the [Linux_Processes_Management](linux_docks/Linux_Processes_Management)) <br>
> 3. us = user space(where program run), sy = kernel space(system) , ni = niceness(Priority value of process), id = idleness of the cpu <br>
> 4. wa = waiting for I/O of processes ,hi = H/W interrupts , si = S/W interrupts , st = how much time VirtualCPU is waiting for Physical CPU. <br>
> 5. MiB Mem: memory information, MiB Swap: memory located in hard drive.
> 6. 'PR' =Priority number for the ideleness  <br>
> 7.  'Swap' : it should not being overly utilized , It is used in the place of memory so means the memory already over utilized. <br>
> 'htop' can be used in the place of 'top', but when the system can't go online than there is need of top if htop is not installed. <br>

> [!IMPORTANT]
> Press 'Ecs' to get out of the prompt every time. <br> 
 
### Procees table Section
```
PID     USER     PR  NI  VIRT    RES    SHR    S %CPU  %MEM  TIME+     COMMAND                 
2265    user1       20  0   4880568 284688 125648 S 3.0   3.5   1:23.58   gnome-shell                              
3760    user1       20  0   554472  53048  40836  S 1.0   0.7   0:06.25   gnome-terminal-                          
10918   user1       20  0   1157.8g 249176 128800 S 1.0   3.1   0:40.02   msedge                                   
16      root     20  0   0       0      0      I 0.3   0.0   0:03.23   rcu_preempt                              
660     root     20  0   1429100 61184  21504  S 0.3   0.8   0:09.96   warp-svc                                 
5591    user1       20  0   32.5g   112404 84248  S 0.3   1.4   0:09.03   msedge                                   
10227   user1       20  0   1157.8g 170052 79496  S 0.3   2.1   0:05.27   msedge                                   
1       root     20  0   166756  11464  8008   S 0.0   0.1   0:01.06   systemd                                  
2       root     20  0   0       0      0      S 0.0   0.0   0:00.00   kthreadd                                 
3       root     0   -20 0       0      0      I 0.0   0.0   0:00.00   rcu_gp                                   
4       root     0   -20 0       0      0      I 0.0   0.0   0:00.00   rcu_par_gp                               
5       root     0   -20 0       0      0      I 0.0   0.0   0:00.00   slub_flushwq  
```

> [!NOTE]
> #### Process Table Section: <br>
> 1. Type (shift+P), it will short the process on the basis of  high CPU Usages. <br>
> 2. Type 'm', it will short the process on the basis of  memory Usages. <br>
> 3. If process is taking too many resources and become frozen than press 'k': <br>
> 4. it will show the: '"PID to signal/kill [default pid = 11384] 'Type pid' " and process will be killed.<br>
>5. Press 'u' , it will asks the user to type in and the processes will be shorted on the basis of Users

> [!IMPORTANT]
> Press 'Ecs' to get out of the prompt every time. <br> 

> [!TIP]
> 1. Top updates it's display after every 3 seconds , You can change  the  display by Pressing the 'D':<br>
> 2. Change delay from 3.0 to _1___, it will updated for every sec.<br>
> 3. Low CPU usages also can be problems in some cases like when the cpu is idle most of the time<br>


