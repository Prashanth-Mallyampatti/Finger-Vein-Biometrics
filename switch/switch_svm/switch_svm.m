clc;clear all;close all;warning('off','all');

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
    load variable
one_label = 'Person1';
 
figure('Position',[0,0,500,400]);
kernel_function = 'linear';
disp("Accuracy for Linear Kernel is ");
svm_classifier(person1(1:316,1),person2(1:316,1),person_label(1:316,1),one_label,kernel_function);

figure('Position',[520,0,500,400]);
 kernel_function = 'rbf';
 disp("Accuracy for rbf Kernel is ");
 svm_classifier(person1(1:316,1),person2(1:316,1),person_label(1:316,1),one_label,kernel_function);
 
figure('Position',[1050,0,500,400]);
 kernel_function = 'quadratic';
 disp("Accuracy for quadratic Kernel is ");
 svm_classifier(person1(1:316,1),person2(1:316,1),person_label(1:316,1),one_label,kernel_function);
 
figure('Position',[100,400,500,400]);
 kernel_function = 'polynomial';
 disp("Accuracy for polynomial Kernel is ");
 svm_classifier(person1(1:316,1),person2(1:316,1),person_label(1:316,1),one_label,kernel_function);
 
figure('Position',[900,400,500,400]);
 kernel_function = 'mlp';
 disp("Accuracy for MLP Kernel is ");
 svm_classifier(person1(1:316,1),person2(1:316,1),person_label(1:316,1),one_label,kernel_function);
 
 end


if choice2
    load fisheriris;
meas_1=meas(1:100,1);
meas_2=meas(1:100,2);
label=species(1:100);
one_label = 'setosa';

figure('Position',[0,0,500,400]);
kernel_function = 'linear';
disp("Accuracy for Linear Kernel is ");
svm_classifier(meas(1:100,1),meas(1:100,2),species(1:100),one_label,kernel_function);

figure('Position',[520,0,500,400]);
 kernel_function = 'rbf';
  disp("Accuracy for rbf Kernel is ");
 svm_classifier(meas(1:100,1),meas(1:100,2),species(1:100),one_label,kernel_function);
 
figure('Position',[1050,0,500,400]);
 kernel_function = 'quadratic';
  disp("Accuracy for quadratic Kernel is ");
 svm_classifier(meas(1:100,1),meas(1:100,2),species(1:100),one_label,kernel_function);
 
figure('Position',[100,400,500,400]);
 kernel_function = 'polynomial';
  disp("Accuracy for polynomial Kernel is ");
 svm_classifier(meas(1:100,1),meas(1:100,2),species(1:100),one_label,kernel_function);
 
 figure('Position',[900,400,500,400]);
 kernel_function = 'mlp';
 disp("Accuracy for MLP Kernel is ");
 svm_classifier(meas(1:100,1),meas(1:100,2),species(1:100),one_label,kernel_function);
 
 end


if choice3
    load var1
    
    one_label = 'p1';

  figure('Position',[520,0,500,400]);
   kernel_function = 'rbf';
   svm_classifier( x1(1:101718,1),x2(1:101718,1),y1,one_label,kernel_function);
  
  figure('Position',[900,400,500,400]);
  kernel_function = 'mlp';
  svm_classifier( x1(1:101718,1),x2(1:101718,1),y1,one_label,kernel_function);
 
end

if choice4
    load var2
    one_label = 'BuildingWindows';

figure('Position',[0,0,500,400]);
kernel_function = 'linear';
disp("Accuracy for Linear Kernel is ");
svm_classifier(x1(1:141,1),x2(1:141,1),label,one_label,kernel_function);

figure('Position',[520,0,500,400]);
 kernel_function = 'rbf';
  disp("Accuracy for rbf Kernel is ");
svm_classifier(x1(1:141,1),x2(1:141,1),label,one_label,kernel_function);
 
figure('Position',[1050,0,500,400]);
 kernel_function = 'quadratic';
  disp("Accuracy for quadratic Kernel is ");
svm_classifier(x1(1:141,1),x2(1:141,1),label,one_label,kernel_function);
 
figure('Position',[100,400,500,400]);
 kernel_function = 'polynomial';
  disp("Accuracy for polynomial Kernel is ");
svm_classifier(x1(1:141,1),x2(1:141,1),label,one_label,kernel_function);
 
 figure('Position',[900,400,500,400]);
 kernel_function = 'mlp';
 disp("Accuracy for MLP Kernel is ");
svm_classifier(x1(1:141,1),x2(1:141,1),label,one_label,kernel_function);
end
