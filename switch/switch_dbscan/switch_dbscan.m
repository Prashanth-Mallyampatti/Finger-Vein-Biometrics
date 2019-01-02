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
data=load('finger_dbscan');
X=data.X;



epsilon=10;
MinPts=10;
IDX=DBSCAN(X,epsilon,MinPts);



PlotClusterinResult(X, IDX);
title(['DBSCAN Clustering (\epsilon = ' num2str(epsilon) ', MinPts = ' num2str(MinPts) ')']);
end


if choice2

%% Load Data
load fisheriris;
data=load('fisher_dbscan');
X=data.X;


%% Run DBSCAN Clustering Algorithm

epsilon=.5;
MinPts=10;
IDX=DBSCAN(X,epsilon,MinPts);


%% Plot Results

PlotClusterinResult(X, IDX);
title(['DBSCAN Clustering (\epsilon = ' num2str(epsilon) ', MinPts = ' num2str(MinPts) ')']);

end


if choice3
load oil_composition;
z=z';
data=load('oil_composition_dbscan');
X=data.X;


%% Run DBSCAN Clustering Algorithm

epsilon=0.2;
MinPts=10;
IDX=DBSCAN(X,epsilon,MinPts);


%% Plot Results

PlotClusterinResult(X, IDX);
title(['DBSCAN Clustering (\epsilon = ' num2str(epsilon) ', MinPts = ' num2str(MinPts) ')']);

end


if choice4

%% Load Data
%load glass_DB
data=load('glass_DB');
X=data.X;
%X=X';

%% Run DBSCAN Clustering Algorithm

epsilon=.4;
MinPts=10;
IDX=DBSCAN(X,epsilon,MinPts);


%% Plot Results

PlotClusterinResult(X, IDX);
title(['DBSCAN Clustering (\epsilon = ' num2str(epsilon) ', MinPts = ' num2str(MinPts) ')']);
   
 end

