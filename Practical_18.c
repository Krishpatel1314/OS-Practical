/*
Write a C program for implementation of FCFS and SJF scheduling 
algorithms.
*/
#include<stdio.h>
#include<conio.h>
# define max 30
int i,j,n,t,p[max],bt[max],wt[max],tat[max];
float awt=0,atat=0;
void sjf()
{
    printf("\n--------------------SJF------------------\n");
    for ( i = 0; i < n; i++)
    {
        for ( j = 0; j < n-i-1; j++)
        {
            if (bt[j]>bt[j+1])
            {
                t=bt[j];
                bt[j]=bt[j+1];
                bt[j+1]=t;

                t=p[j];
                p[j]=p[j+1];
                p[j+1]=t;
            }
        }
    }
    printf("Process \t Burst time \t Waiting time \t Turn Around time\n");
    for ( i = 0; i < n; i++)
    {
        wt[i]=0;
        tat[i]=0;
        for ( j = 0; j < i; j++)
        {
            wt[i]=wt[i]+bt[j];
        }
        tat[i]=wt[i]+bt[i];
        awt=awt+wt[i];
        atat=atat+tat[i];
        printf("%d\t\t %d\t\t %d\t\t %d\n",p[i],bt[i],wt[i],tat[i]);
    }
    awt=awt/n;
    atat=atat/n;
    printf("Average Waiting Time:%f\n",awt);
    printf("Average turn around time:%f",atat);
}
void fcfs()
{
    printf("\n--------------------FCFS------------------\n");
    printf("Process \t Burst time \t Waiting time \t Turn Around time\n");
    for ( i = 0; i < n; i++)
    {
        wt[i]=0;
        tat[i]=0;
        for ( j = 0; j < i; j++)
        {
            wt[i]=wt[i]+bt[j];
        }
        tat[i]=wt[i]+bt[i];
        awt=awt+wt[i];
        atat=atat+tat[i];
        printf("%d\t\t %d\t\t %d\t\t %d\n",p[i],bt[i],wt[i],tat[i]);
    }
    awt=awt/n;
    atat=atat/n;
    printf("Average Waiting Time:%f\n",awt);
    printf("Average turn around time:%f",atat);
}
int main()
{
    printf("Enter no. of process you want to enter:");
    scanf("%d",&n);
    printf("Enter the process number:");
    for ( i = 0; i < n; i++)
    {
        scanf("%d",&p[i]);
    }
    printf("Enter the burst time of the process:");
    for ( i = 0; i < n; i++)
    {
        scanf("%d",&bt[i]);
    }
    fcfs();
    sjf();
    return 0;
}