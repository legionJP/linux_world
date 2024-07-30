 # Troubleshooting Commands

 ```diff
+TOP
```
```
top - 15:42:01 up 32 min,  1 user,  load average: 0.72, 0.62, 0.85
Tasks: 273 total,   1 running, 272 sleeping,   0 stopped,   0 zombie
%Cpu(s):  3.1 us,  0.9 sy,  0.0 ni, 95.3 id,  0.7 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   7855.7 total,   2306.7 free,   2767.2 used,   2781.8 buff/cache
MiB Swap:      0.0 total,      0.0 free,      0.0 used.   4547.9 avail Mem 

```
 
> [!NOTE]
> #Statics Section: <br>
> If you have the 1 core cpu and load average is 1, means it is using the 100% cpu. <br>
> Tasks: 274 total,   1 running, 273 sleeping,   0 stopped,   0 zombie----(for this please go through the [Linux_Processes_Management](linux_docks/Linux_Processes_Management)) <br>
> us = user space(where program run), sy = kernel space(system) , ni = niceness(Priority value of process), id = idleness of the cpu <br>
> wa = waiting for I/O of processes ,hi = H/W interrupts , si = S/W interrupts , st = how much time VirtualCPU is waiting for Physical CPU. <br>
> MiB Mem: memory information, MiB Swap: memory located in hardrive.
> 
 

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.
