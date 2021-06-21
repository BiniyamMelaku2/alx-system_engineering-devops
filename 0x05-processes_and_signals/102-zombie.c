#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>

/**
 * infinite_while - infinite loop parent process
 * Return: 0 Success
 */

int infinite_while(void)
{
while (1)
{
sleep(1);
}
return (0);
}

/**
 * main - program creates 5 zombie processes
 * Return: 0 Success
 */

int main(void)
{
int i;
i = 0;
for (i = 0; i < 5; i++)
{
if (fork() == 0)
{
printf("Zombie process created, PID: %d\n", getpid());
exit(0);
}
}
infinite_while();
return (0);
}
