clc;           
clear;        
close all;  
di=dir('letters');
st={di.name};
nam=st(3:end);
imgfile1=cell(2,length(nam));
for i=1:length(nam)
   imgfile1(1,i)={imread(['letters','\',cell2mat(nam(i))])};
   temp=cell2mat(nam(i));
   imgfile1(2,i)={temp(1)};
end
save('imgfildata1.mat','imgfile1');
clear;