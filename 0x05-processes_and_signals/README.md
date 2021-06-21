# 0x05. Processes and signals
 Foundations > System engineering & DevOps > Bash 

## Resources

### Read or watch:
  * [Linux PID](http://www.linfo.org/pid.html)
  * [Linux process](https://www.thegeekstuff.com/2012/03/linux-processes-environment/)
  * [Linux signal](https://www.thegeekstuff.com/2012/03/linux-signals-fundamentals/)

### man or help:
  * ps
  * pgrep
  * pkill
  * kill
  * exit
  * trap

## 0. What is my PID  [ 0-what-is-my-pid ]
  Write a Bash script that displays its own PID. 
  > ./0-what-is-my-pid
  
## 1. List your processes  [ 1-list_your_processes ]
  Write a Bash script that displays a list of currently running processes.
  Requirements:
  * Must show all processes, for all users, including those which might not have a TTY
  * Display in a user-oriented format
  * Show process hierarchy  
  > ./1-list_your_processes | head -50
  
## 2. Show your Bash PID  [ 2-show_your_bash_pid ]  
  Using your previous exercise command, write a Bash script that displays lines containing the bash word, thus allowing you to easily get the PID of your Bash process.
  Requirements:
  * You cannot use pgrep
  * The third line of your script must be # shellcheck disable=SC2009 (for more info about ignoring shellcheck error [here](https://github.com/koalaman/shellcheck/wiki/Ignore))
  > ./2-show_your_bash_pid
  
## 3. Show your Bash PID made easy  [ 3-show_your_bash_pid_made_easy ]
  Write a Bash script that displays the PID, along with the process name, of processes whose name contain the word bash.
  Requirements:
  * You cannot use ps
  > ./3-show_your_bash_pid_made_easy
  
## 4. To infinity and beyond  [ 4-to_infinity_and_beyond ]
  Write a Bash script that displays To infinity and beyond indefinitely.
  Requirements:
  * In between each iteration of the loop, add a sleep 2
  Note that I ctrl+c (killed) the Bash script in the example.
  > ./4-to_infinity_and_beyond
  
## 5. Don't stop me now!  [ 5-dont_stop_me_now ]
  We stopped our 4-to_infinity_and_beyond process using ctrl+c in the previous task, there is actually another way to do this.
  Write a Bash script that stops 4-to_infinity_and_beyond process.
  Requirements:
  * You must use kill
  I opened 2 terminals in this example, started by running my 4-to_infinity_and_beyond Bash script in terminal #0 and then moved on terminal #1 to run 5-dont_stop_me_now. We can then see in terminal #0 that my process has been terminated.
  + Terminal #0
  > ./4-to_infinity_and_beyond
  + Terminal #1
  > ./5-dont_stop_me_now
  
## 6. Stop me if you can  [ 6-stop_me_if_you_can ]
  Write a Bash script that stops 4-to_infinity_and_beyond process.
  Requirements:
  * You cannot use kill or killall
  I opened 2 terminals in this example, started by running my 4-to_infinity_and_beyond Bash script in terminal #0 and then moved on terminal #1 to run 6-stop_me_if_you_can. We can then see in terminal #0 that my process has been terminated.
  + Terminal #0  
  > ./4-to_infinity_and_beyond
  + Terminal #1
  > ./6-stop_me_if_you_can

## 7. Highlander  [ 7-highlander ]
  Write a Bash script that displays:
  * To infinity and beyond indefinitely
  * With a sleep 2 in between each iteration
  * I am invincible!!! when receiving a SIGTERM signal
Make a copy of your 6-stop_me_if_you_can script, name it 67-stop_me_if_you_can, that kills the 7-highlander process instead of the 4-to_infinity_and_beyond one.
  I started 7-highlander in Terminal #0 and then run 67-stop_me_if_you_can in terminal #1, for every iteration we can see I am invincible!!! appearing in terminal #0.
  + Terminal #0
  > ./7-highlander
  + Terminal #1
  > ./67-stop_me_if_you_can
  
## 8. Beheaded process  [ 8-beheaded_process ]
  Write a Bash script that kills the process 7-highlander.
  I started 7-highlander in Terminal #0 and then run 8-beheaded_process in terminal #1 and we can see that the 7-highlander has been killed.
  + Terminal #0
  > ./7-highlander
  + Terminal #1
  > ./8-beheaded_process
    
  
## 9. Process and PID file  [ 100-process_and_pid_file ]
  Write a Bash script that:
  * Creates the file [ /var/run/holbertonscript.pid ] containing its PID
  * Displays [ To infinity and beyond ] indefinitely
  * Displays [ I hate the kill command ] when receiving a SIGTERM signal
  * Displays [ Y U no love me?! ] when receiving a SIGINT signal
  * Deletes the file /var/run/holbertonscript.pid and terminates itself when receiving a SIGQUIT or SIGTERM signal 
  > sudo ./100-process_and_pid_file
  + Executing the 100-process_and_pid_file script and killing it with ctrl+c.Terminal #0
  > sudo pkill -f 100-process_and_pid_file
  + Starting 100-process_and_pid_file in the terminal #0 and then killing it in the terminal #1.
  
## 10. Manage my process  [ 101-manage_my_process, manage_my_process  ]
  Read:
  * [&](https://bashitout.com/2013/05/18/Ampersands-on-the-command-line.html)
  * [init.d](https://www.ghacks.net/2009/04/04/get-to-know-linux-the-etcinitd-directory/?__cf_chl_managed_tk__=46926ed6f022bebcc9ae9f5ea23469517c980adf-1624268930-0-AS4Nv7dDbmC6AWJDXOI3yo7L3J11_DbZoO2FFQ3jmMtMTq5OXWjyN2PNAO-cwZ1a4pkr0CXyk1Y0Qon6W69lkuDP8DMuQcEZWGzRFFClq1HKd7fFdqAAJnhgbtNouAKS35IfiBIz8ywmlDyiSKZfX8tkb3pVYoPCulGmU-deouje6y169HXJAhW99hgIviZnEjUif38mA02nENehl7m35Z3JhxTM89WPoulmc719Jn3N9g_uKgcy2ZBydwsWv_9fj3vE4n8PNs53dqsMiQFSLcJG7XKllR-pk7OccUDbL-9heIYVbWT8P_Hlv1R6rREqwbzA6RadQqvQziRWGMUjUQuGrB4dAx2Q7F9PaZZnyA34gQ3K3N2ewey_Y9xsoDJMpmXBQl8I7W8Nu8V0DrgvEF1ig6Rs7nXXYM1KqrRFKJciAsai96Q7VsmLg6JVon-z6tl94O8gqwqTxcT3IG3_LEcYHLtMl7P5SqXsoNII2j67wTVaN5_3nzQXLHqmSO0WiB_j8XByHDk4-0VcIBZfeFX8Zu8xGSCf1m3t14iCwQdpQwaTBe3silAZD_WbY2QrZRwoLsafBgyvvKCwMcMh_RvBb0jGAlTZvpH-xNkWiyM4vciP26PhpsRwSvxjvYPzAGeVcMmAUSNyaH6pnI_Wdcxwtq7IaOve4khCbVxtLbyhHZ7OuB8vgNu0lj3t2RKicw)
  * [Daemon](https://en.wikipedia.org/wiki/Daemon_%28computing%29)
  * [Positional parameters](https://www.gnu.org/software/bash/manual/html_node/Positional-Parameters.html)

  man: sudo
  Programs that are detached from the terminal and running in the background are called daemons or processes, need to be managed. The general minimum set of     
  instructions is: start, restart and stop. The most popular way of doing so on Unix system is to use the init scripts.
  Write a manage_my_process Bash script that:
  * Indefinitely writes I am alive! to the file /tmp/my_process
  * In between every I am alive! message, the program should pause for 2 seconds

  Write Bash (init) script 101-manage_my_process that manages manage_my_process. (both files need to be pushed to git)
  Requirements:
  * When passing the argument start:
   + Starts manage_my_process
   + Creates a file containing its PID in /var/run/my_process.pid
   + Displays manage_my_process started
  * When passing the argument stop:
   + Stops manage_my_process
   + Deletes the file /var/run/my_process.pid
   + Displays manage_my_process stopped
  * When passing the argument restart
   + Stops manage_my_process
   + Deletes the file /var/run/my_process.pid
   + Starts manage_my_process
   + Creates a file containing its PID in /var/run/my_process.pid
   + Displays manage_my_process restarted
  * Displays Usage: manage_my_process {start|stop|restart} if any other argument or no argument is passed

  Note that this init script is far from being perfect (but good enough for the sake of manipulating process and PID file), for example we do not handle the case   
  where we check if a process is already running when doing ./101-manage_my_process start, in our case it will simply create a new process instead of saying that 
  it is already started.   
  > ./101-manage_my_process
  > sudo ./101-manage_my_process start
  > tail -f -n0 /tmp/my_process
  > ./101-manage_my_process stop
  > cat /var/run/my_process.pid 
  > tail -f -n0 /tmp/my_process
  > sudo ./101-manage_my_process start
  > cat /var/run/my_process.pid
  > sudo ./101-manage_my_process restart
  > cat /var/run/my_process.pid
  > tail -f -n0 /tmp/my_process 
  
## 11. Zombie  [ 102-zombie.c ]
  Read [what a zombie process is.](https://zombieprocess.wordpress.com/what-is-a-zombie-process/)
  Write a C program that creates 5 zombie processes.
  Requirements:
  * For every zombie process created, it displays [ Zombie process created, PID: ZOMBIE_PID ]
  * Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
  * When your code is done creating the parent process and the zombies, use the function bellow
  * Terminal #0
  > gcc 102-zombie.c -o zombie | ./zombie
  * Terminal #1
  > ps aux | grep -e 'Z+.*<defunct>'
  * In Terminal #0, I start by compiling 102-zombie.c and executing zombie which creates 5 zombie processes. In Terminal #1, I display the list of processes and look for lines containing Z+.*<defunct> which catches zombie process.
