#include<stdio.h>
#include<stdlib.h>
int main()
{
	for(int i=0;i<5;i++) // loop will run n times (n=5)
	{
		if(fork() == 0)
		{
			printf("[son] pid %d from [parent] pid %d\n",getpid(),getppid());
			exit(0);
		}
	}
	for(int i=0;i<5;i++) // loop will run n times (n=5)
	wait(NULL);	
}

/*
OUTPUT:
[son] pid 4223 from [parent] pid 4218
[son] pid 4225 from [parent] pid 4218
[son] pid 4226 from [parent] pid 4218
[son] pid 4222 from [parent] pid 4218
[son] pid 4224 from [parent] pid 4218
*/