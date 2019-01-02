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

if choice2
        load fisheriris

X = meas(51:100,3:4);
X=X';
Y=meas(101:150,3:4);
Y=Y';
P=0.5+(2.9-0.5).*rand(1);

Q=2.5+(7.5-2.5).*rand(1);
R=[Q,P];

R=R';

plot(R(1,1),R(2,1),'g*');




% 4 nearest neighbours to each point
I = nearestneighbour(R, X, 'NumberOfNeighbours', 1)
J=nearestneighbour(R, Y, 'NumberOfNeighbours', 1)
disp(J);
disp(I);

disp(X(:,I));
disp(Y(:,J));
disp(R)
a=(X(1,I)-R(1,1))*(X(1,I)-R(1,1));
b=(X(2,I)-R(2,1))*(X(2,I)-R(2,1));
c=sqrt(a+b);

e=(Y(1,J)-R(1,1))*(Y(1,J)-R(1,1));
f=(Y(2,J)-R(2,1))*(Y(2,J)-R(2,1));
d=sqrt(e+f);

I=I';
J=J';
hold on
plot(X(1,1), X(2, 1), 'r.','MarkerSize', 15);
plot(Y(1,1), Y(2, 1), 'b.','MarkerSize', 15)


for l=2 : 50
    
plot(X(1,l), X(2, l), 'r.','MarkerSize', 15);


end
for k=2 : 50
plot(Y(1,k), Y(2, k), 'b.','MarkerSize', 15)
end

if(c<d)
    q=d;
     disp('Predicted flower:virginia');
    acc=(((d-c)/q))*100;
    if(acc<50.00)
        acc=100.00-acc;
    end
   hold on
p1 = repmat(R(1,1),1,3);
p2 = repmat(R(2,1),1,3);

quiver(p1, p2, X(1, I(:, 1)) - p1, X(2, I(:, 1)) - p2, 0, 'k')
legend('point of interest','virginia','setosa','location','northwest');
hold off

else 
    w=c;
     disp('Predicted Flower:setosa');
    acc=(((c-d)/w))*100;
    if(acc<50.00)
        acc=100.00-acc;
    end
    hold on
p1 = repmat(R(1,1),1,3);
p2 = repmat(R(2,1),1,3);

quiver(p1, p2, Y(1, J(:, 1)) - p1, Y(2, J(:, 1)) - p2, 0, 'k')
legend('point of interest','virginia','setosa','location','northwest');
hold off
     
 end 
disp("Accuracy:"+acc+"%");
end

if choice1
load var;

X = person1(1:158,1:2);
X=X';
Y=person1(159:316,1:2 );
Y=Y';


P=0.04+(0.10-0.04).*rand(1);

Q=0.0+(0.27-0.0).*rand(1);
R=[Q,P];

R=R';

plot(R(1,1),R(2,1),'g*');

% 4 nearest neighbours to each point
I = nearestneighbour(R, X, 'NumberOfNeighbours', 1)
J=nearestneighbour(R, Y, 'NumberOfNeighbours', 1)
disp(J);
disp(I);

disp(X(:,I));
disp(Y(:,J));
disp(R)
a=(X(1,I)-R(1,1))*(X(1,I)-R(1,1));
b=(X(2,I)-R(2,1))*(X(2,I)-R(2,1));
c=sqrt(a+b);

e=(Y(1,J)-R(1,1))*(Y(1,J)-R(1,1));
f=(Y(2,J)-R(2,1))*(Y(2,J)-R(2,1));
d=sqrt(e+f);

I=I';
J=J';
hold on
plot(X(1,1), X(2, 1), 'r.','MarkerSize', 15);
plot(Y(1,1), Y(2, 1), 'b.','MarkerSize', 15)


for l=2 : 158
    
plot(X(1,l), X(2, l), 'r.','MarkerSize', 15);


end
for k=2 : 158
plot(Y(1,k), Y(2, k), 'b.','MarkerSize', 15)
end

if(c<d)
    q=d;
     disp('Predicted Person:Person 1');
    acc=(((d-c)/q))*100;
    if(acc<50.00)
        acc=100.00-acc;
    end
   hold on
p1 = repmat(R(1,1),1,3);
p2 = repmat(R(2,1),1,3);

quiver(p1, p2, X(1, I(:, 1)) - p1, X(2, I(:, 1)) - p2, 0, 'k')
legend('point of interest','Person 1','Person 2','location','northwest');
hold off

else 
    w=c;
     disp('Predicted Person:Person 2');
    acc=(((c-d)/w))*100;
    if(acc<50.00)
        acc=100.00-acc;
    end
    hold on
p1 = repmat(R(1,1),1,3);
p2 = repmat(R(2,1),1,3);

quiver(p1, p2, Y(1, J(:, 1)) - p1, Y(2, J(:, 1)) - p2, 0, 'k')
legend('point of interest','Person 1','Person 2','location','northwest');
hold off
     
 end 
disp("Accuracy:"+acc+"%");
end
if choice3
load oil_composition

% main points 
P = rand(2, 1);

% random point set
X = z;
I = nearestneighbour(P, X);

disp(I)
disp('main points:')
disp(P)
disp('Nearest neighbours')
disp(X(:, I))

plot(X(1,:), X(2,:), 'b.', P(1,:), P(2,:), 'r.', 'MarkerSize', 15);
hold on
quiver(P(1, :), P(2, :), X(1,I) - P(1, :), X(2, I) - P(2, :),0, 'K');
hold off
    
end


if choice4 
        % three points of interest
load glass_nn;
load glass_nn;

X = glass_al_ca(1:71,1:2);
X=X';
Y=glass_al_ca(187:214,1:2);
Y=Y';
P=6.0+(11.0-6.0).*rand(1);

Q=0.05+(3.1-0.02).*rand(1);
R=[Q,P];

R=R';

plot(R(1,1),R(2,1),'g*');




% 4 nearest neighbours to each point
I = nearestneighbour(R, X, 'NumberOfNeighbours', 1)
J=nearestneighbour(R, Y, 'NumberOfNeighbours', 1)
disp(J);
disp(I);

disp(X(:,I));
disp(Y(:,J));
disp(R)
a=(X(1,I)-R(1,1))*(X(1,I)-R(1,1));
b=(X(2,I)-R(2,1))*(X(2,I)-R(2,1));
c=sqrt(a+b);

e=(Y(1,J)-R(1,1))*(Y(1,J)-R(1,1));
f=(Y(2,J)-R(2,1))*(Y(2,J)-R(2,1));
d=sqrt(e+f);

I=I';
J=J';
hold on
plot(X(1,1), X(2, 1), 'r.','MarkerSize', 15);
plot(Y(1,1), Y(2, 1), 'b.','MarkerSize', 15)


for l=2 : 71
    
plot(X(1,l), X(2, l), 'r.','MarkerSize', 15);


end
for k=2 : 27
plot(Y(1,k), Y(2, k), 'b.','MarkerSize', 15)
end

if(c<d)
    q=d;
     disp('Predicted glass:building_windows_float_processed');
    acc=(((d-c)/q))*100;
    if(acc<50.00)
        acc=100.00-acc;
    end
   hold on
p1 = repmat(R(1,1),1,3);
p2 = repmat(R(2,1),1,3);

quiver(p1, p2, X(1, I(:, 1)) - p1, X(2, I(:, 1)) - p2, 0, 'k')
legend('point of interest','building windows float processed','headlamps','location','northwest');
hold off

else 
    w=c;
    disp('Predicted glass:headlamps');
    acc=(((c-d)/w))*100;
    if(acc<50.00)
        acc=100.00-acc;
    end
    hold on
p1 = repmat(R(1,1),1,3);
p2 = repmat(R(2,1),1,3);

quiver(p1, p2, Y(1, J(:, 1)) - p1, Y(2, J(:, 1)) - p2, 0, 'k')
legend('point of interest','building windows float processed','headlamps','location','northwest');
hold off
     
 end 
disp("Accuracy:"+acc+"%");
   
end

