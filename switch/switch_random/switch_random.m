clc;
clear all;
fid1=fopen('C:\Users\prashanthm\Desktop\APP\database1.txt','r');
fid2=fopen('C:\Users\prashanthm\Desktop\APP\database2.txt','r');
fid4=fopen('C:\Users\prashanthm\Desktop\APP\database4.txt','r');

choice1=fscanf(fid1,'%d');
choice2=fscanf(fid2,'%d');
choice4=fscanf(fid4,'%d');

fclose(fid1);
fclose(fid2); 
fclose(fid4);

choice1=0;
choice2=1;
choice4=0;


if choice1
        cd 'C:\Users\prashanthm\Desktop\FINAL YEAR PROJECT\codeExec\FingerDataset\Prashanth'
        call_generic_random_forests
end

if choice2
    cd 'C:\Users\prashanthm\Desktop\FINAL YEAR PROJECT\codeExec\fisher dataset\Prashanth'
    call_generic_random_forests
end

if choice4
    cd 'C:\Users\prashanthm\Desktop\FINAL YEAR PROJECT\codeExec\glass\Random forests_glass'
    call_random_forests
end
