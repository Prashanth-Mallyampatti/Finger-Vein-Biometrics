clc;
clear all;
fid1=fopen('C:\Users\prashanthm\Desktop\APP\database1.txt','r');
fid2=fopen('C:\Users\prashanthm\Desktop\APP\database2.txt','r');
fid3=fopen('C:\Users\prashanthm\Desktop\APP\database3.txt','r');
fid4=fopen('C:\Users\prashanthm\Desktop\APP\database4.txt','r');

choice1=fscanf(fid1,'%d');
choice2=fscanf(fid2,'%d');
choice3=fscanf(fid3,'%d');
choice4=fscanf(fid4,'%d');

fclose(fid1);
fclose(fid2); 
fclose(fid3); 
fclose(fid4);


if choice1
    load('person1.mat');
    load('person2.mat');

j=1;
for i = 1: 5 : 160
   %disp(i);
   T1 = person1(i:i+4,1);
   T1=T1';
   X1(j,:)=std(T1);
   T2 = person2(i:i+4,1);
   T2=T2';
   X2(j,:)=std(T2);
   j=j+1;  
end

j=1;
for i = 161: 5 : 320
   %disp(i);
   T1 = person1(i:i+4,1);
   T1=T1';
   Y1(j,:)=std(T1);
   T2 = person2(i:i+4,1);
   T2=T2';
   Y2(j,:)=std(T2);
   j=j+1;   
end
plot(X1,Y1, 'b.', 'MarkerSize', 15);
axis([0 0.03 0 0.02]);

hold on;

plot(X2,Y2, 'g.', 'MarkerSize', 15);
hold on
A=cat(1,X1,X2);
A=A';
B=cat(1,Y1,Y2);
B=B';

A=cat(1,A,B);

disp(A);
count=0;
count1=0;
P=(0.014).*rand(1);

Q=(0.03).*rand(1);
R=[Q,P];

R=R';

plot(R(1,1),R(2,1),'r*');

I = nearestneighbour(R, A, 'NumberOfNeighbours', 3)
disp(R);

I=I';
p1 = repmat(R(1,1), 1, 3);
p2 = repmat(R(2,1), 1, 3);

if( I(1,1)< 32)
    count=count+1;
else 
    count1=count1+1;
end
   if( I(2,1)< 32)
    count=count+1;
else 
    count1=count1+1;
   end
   
    if( I(3,1)< 32)
    count=count+1;
   else 
    count1=count1+1;
    end
 if(count1>count)
     disp('Person 1');
 else
      disp('Person 2');
 end 
 
quiver(p1, p2, A(1, I(:, 1)) - p1, A(2, I(:, 1)) - p2, 0, 'k')
legend('person2','person1','sample','location','northwest');
hold off
end        

if choice2
load fisheriris

X = meas(51:150,3:4);
X=X';
P=0.5+(2.9-0.5).*rand(1);

Q=2.5+(7.5-2.5).*rand(1);
R=[Q,P];

R=R';

plot(R(1,1),R(2,1),'g*');

disp(R)


I = nearestneighbour(R, X, 'NumberOfNeighbours', 3)
disp(I)
I=I';
hold on
plot(X(1,1), X(2, 1), 'r.','MarkerSize', 15);
plot(X(1,51), X(2, 51), 'b.','MarkerSize', 15)


for j=2 : 50
    
plot(X(1,j), X(2, j), 'r.','MarkerSize', 15);


end
count=0;
count1=0;

for k=52 : 100
plot(X(1,k), X(2, k), 'b.','MarkerSize', 15)
end

if( I(1,1)< 50)
    count=count+1;
else 
    count1=count1+1;
end
   if( I(2,1)< 50)
    count=count+1;
else 
    count1=count1+1;
   end
   
    if( I(3,1)< 50)
    count=count+1;
   else 
    count1=count1+1;
    end
 if(count1>count)
     disp('setosa');
 else
      disp('virginia');
 end 

hold on
p1 = repmat(R(1,1),1,3);
p2 = repmat(R(2,1),1,3);

quiver(p1, p2, X(1, I(:, 1)) - p1, X(2, I(:, 1)) - p2, 0, 'k')
legend('point of interest','virginia','setosa','location','northwest');
hold off
end

if choice3
        % three points of interest
load agar

X = kvein(1:60,3:4);
X=X';
P=400+(100).*rand(1);

Q=43+(60).*rand(1);
R=[P,Q];

R=R';

plot(R(1,1),R(2,1),'g*');

disp(R)


% 4 nearest neighbours to each point
I = nearestneighbour(R, X, 'NumberOfNeighbours', 3)
disp(I)
I=I';
hold on
 plot(X(1,1), X(2, 1), 'r.','MarkerSize', 15);
 plot(X(1,31), X(2, 31), 'b.','MarkerSize', 15)


for j=2 : 30
    
plot(X(1,j), X(2, j), 'r.','MarkerSize', 15);


end
for j=32 : 60
    
plot(X(1,j), X(2, j), 'b.','MarkerSize', 15);


end
   
 count2=0;
 count1=0;
 
% for k=52 : 100
% plot(X(1,k), X(2, k), 'b.','MarkerSize', 15)
% end

switch true    
  case I(1,1)<31  
      count1=count1+1;
  case I(1,1)>30 && I(1,1)<61
      count2=count2+1;
 end


switch true    
  case I(2,1)<31  
      count1=count1+1;
  case I(2,1)>30 && I(1,1)<61
      count2=count2+1;
  
 end



if(count1>count2)
     disp('species1');
 else
      disp('species2');
 end 

hold on
p1 = repmat(R(1,1),1,3);
p2 = repmat(R(2,1),1,3);

quiver(p1, p2, X(1, I(:, 1)) - p1, X(2, I(:, 1)) - p2, 0, 'k')
legend('point of interest','species1','species2','location','northwest');
hold off
end

if choice4
        % three points of interest
clc;
clear all;
load glass_KNN;

X = glass_al_ca(1:99,1:2);
X=X';


P=6.0+(11.0-6.0).*rand(1);

Q=0.05+(3.1-0.05).*rand(1);
R=[Q,P];

R=R';

plot(R(1,1),R(2,1),'g*');

disp(R)


% 4 nearest neighbours to each point
I = nearestneighbour(R, X, 'NumberOfNeighbours', 3)
disp(I)
I=I';
hold on
plot(X(1,1), X(2, 1), 'r.','MarkerSize', 15);
plot(X(1,71), X(2, 71), 'b.','MarkerSize', 15)


for j=2 : 71
    
plot(X(1,j), X(2, j), 'r.','MarkerSize', 15);


end
count=0;
count1=0;

for k=72 : 99
plot(X(1,k), X(2, k), 'b.','MarkerSize', 15)
end

if( I(1,1)< 72)
    count=count+1;
else 
    count1=count1+1;
end
   if( I(2,1)< 72)
    count=count+1;
else 
    count1=count1+1;
   end
   
    if( I(3,1)< 72)
    count=count+1;
   else 
    count1=count1+1;
    end
 if(count1>count)
     disp('Predicted glass:headlamps');
 else
      disp('Predicted glass:building windows float processed');
 end 

hold on
p1 = repmat(R(1,1),1,3);
p2 = repmat(R(2,1),1,3);

quiver(p1, p2, X(1, I(:, 1)) - p1, X(2, I(:, 1)) - p2, 0, 'k')
legend('point of interest','building windows float processed','headlamps','location','northwest');
hold off

 end
