set confirm off 
file {0}
target extended-remote :4242
load
delete breakpoints
break start_trigger
break stop_trigger
break _exit
continue
print /u *0xe0001004
continue
print /u *0xe0001004
quit