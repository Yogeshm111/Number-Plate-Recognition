load imgfildata1;
load imgfildata2;
picture=imread('final_image.jpg');
picture=imbinarize(picture);
picture=bwareaopen(picture,1500);
figure;
imshow(picture);
figure;
imshow(picture);
[L]=bwlabel(picture);
propied=regionprops(L,'BoundingBox');
hold on
pause(1)
for n=1:size(propied,1)
  rectangle('Position',propied(n).BoundingBox,'EdgeColor','g','LineWidth',2)
end
hold off
i=1;
figure
final_output=[];
t=[];
for n=1:2
  [r,c] = find(L==n);
  n1=picture(min(r):max(r),min(c):max(c));
  n1=imresize(n1,[42,24]);
 %if ([a,b]==[42,24])
 imshow(n1)
 %pause(0.2)
 x=[ ];

 totalLetters=size(imgfile1,2);

    for k=1:totalLetters
    
        y=corr2(imgfile1{1,k},n1)
        x=[x y];
    
    end
    t=[t max(x)];
    if max(x)>.45
    z=find(x==max(x));
    out=cell2mat(imgfile1(2,z));

    final_output=[final_output out]
    end
 %end  
end


for n=3:4
  [r,c] = find(L==n);
  n1=picture(min(r):max(r),min(c):max(c));
  n1=imresize(n1,[42,24]);
  %[a,b]=size(n1)
 %if ([a,b]==[42,24])
 imshow(n1)
 %pause(0.2)
 x=[ ];

 totalNumbers=size(imgfile2,2);

    for k=1:totalNumbers
    
        y=corr2(imgfile2{1,k},n1)
        x=[x y];
    
    end
    t=[t max(x)];
    if max(x)>.45
    z=find(x==max(x));
    out=cell2mat(imgfile2(2,z));

    final_output=[final_output out]
    end
 %end  
end

for n=5:6
  [r,c] = find(L==n);
  n1=picture(min(r):max(r),min(c):max(c));
  n1=imresize(n1,[42,24]);
  %[a,b]=size(n1)
 %if ([a,b]==[42,24])
 imshow(n1)
 %pause(0.2)
 x=[ ];

 totalLetters=size(imgfile1,2);

    for k=1:totalLetters
    
        y=corr2(imgfile1{1,k},n1)
        x=[x y];
    
    end
    t=[t max(x)];
    if max(x)>.45
    z=find(x==max(x));
    out=cell2mat(imgfile1(2,z));

    final_output=[final_output out]
    end
 %end  
end


for n=7:10
  [r,c] = find(L==n);
  n1=picture(min(r):max(r),min(c):max(c));
  n1=imresize(n1,[42,24]);
  %[a,b]=size(n1)
 %if ([a,b]==[42,24])
 imshow(n1)
 %pause(0.2)
 x=[ ];

 totalNumbers=size(imgfile2,2);

    for k=1:totalNumbers
    
        y=corr2(imgfile2{1,k},n1)
        x=[x y];
    
    end
    t=[t max(x)];
    if max(x)>.45
    z=find(x==max(x));
    out=cell2mat(imgfile2(2,z));

    final_output=[final_output out]
    end
 %end  
end


file = fopen('number_Plate.txt', 'wt');
    fprintf(file,'%s\n',final_output+"'");
    fclose(file);                     
    winopen('number_Plate.txt')