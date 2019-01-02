clc;
clear all;
fid2=fopen('C:\Users\prashanthm\Desktop\APP\database2.txt','r');
fid3=fopen('C:\Users\prashanthm\Desktop\APP\database3.txt','r');



choice2=fscanf(fid2,'%d');
choice3=fscanf(fid3,'%d');

fclose(fid2); 
fclose(fid3); 


if choice2
    cd 'C:\Users\prashanthm\Desktop\FINAL YEAR PROJECT\codeExec\fisher dataset\prashanth\Linear Regression'
    main
end

if choice3
    cd 'C:\Users\prashanthm\Desktop\FINAL YEAR PROJECT\codeExec\code diff dataset\prashanth\Linear Regression'
    main
end
