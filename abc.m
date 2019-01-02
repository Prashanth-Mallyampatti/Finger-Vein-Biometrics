    fid=fopen('algorithm.txt','w');
    fprintf(fid, "1");
    fclose(fid);
fid=fopen('algorithm.txt','r');
str=fscanf(fid,'%s');
fclose(fid);    

% cd "C:\Users\prashnthm\Desktop\FINAL YEAR PROJECT\codeExec\FingerDataset\prashnth\svm finger"
% svm
