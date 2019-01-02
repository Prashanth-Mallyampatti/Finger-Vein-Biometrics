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
        cd 'C:\Users\prashanthm\Desktop\FINAL YEAR PROJECT\codeExec\FingerDataset\prashanth\Logistic Finger'
        logisticRegression
end

if choice2
    cd 'C:\Users\prashanthm\Desktop\FINAL YEAR PROJECT\codeExec\fisher dataset\prashanth\Logistic Regression'
    logisticRegression
end

if choice3
    cd 'C:\Users\prashanthm\Desktop\FINAL YEAR PROJECT\codeExec\code diff dataset\prashanth\Logistic Regression'
    main
end

if choice4
    cd 'C:\Users\prashanthm\Desktop\FINAL YEAR PROJECT\codeExec\glass\Logistic Regression'
    main
end
