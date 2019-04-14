clc;           
clear;        
close all;  
di=dir('numbers');
st={di.name};
nam=st(3:end);
imgfile2=cell(2,length(nam));
for i=1:length(nam)
   imgfile2(1,i)={imread(['numbers','\',cell2mat(nam(i))])};
   temp=cell2mat(nam(i));
   imgfile2(2,i)={temp(1)};
end
save('imgfildata2.mat','imgfile2');
clear;