t1=0;
t2=0;
n=4;                 %no of processes
%bt=[ 2 3 1 5];    %burst time
bt=ceil(1+ 8.*rand([1,4]));
wt=zeros(1,n);       %waiting time
tat=zeros(1,n);      %turn around time
for i=2:1:n
   wt(i)=bt(i-1)+wt(i-1);  
   t1=t1+wt(i);                  
end
for i=1:1:n
    tat(i)=bt(i)+wt(i);    
    t2=t2+tat(i);              
end
disp('Process   Burst time  Waiting time    Turn Around time'); %displaying final values
for i=1:1:n
    fprintf('P%d\t\t\t%d\t\t\t%d\t\t\t\t%d\n',(i),bt(i),wt(i),tat(i));
end
fprintf('Average waiting time: %f\n',(t1/n));
fprintf('Average turn around time: %f\n',(t2/n));