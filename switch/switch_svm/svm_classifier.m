function svmStruct = svm_classifier(x1,x2,label,one_label,kernel_function)
data   = [x1, x2];
species = cellstr(label);
groups = ismember(species,one_label);

[train, test] = crossvalind('holdOut',groups); 
cp = classperf(groups);

svmStruct = svmtrain(data(train,:),groups(train),'showplot',true,'kernel_function',kernel_function);
classes = svmclassify(svmStruct,data(test,:),'showplot',true);
classperf(cp,classes,test);

disp(cp.CorrectRate*100+"%");
end