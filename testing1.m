%[file,path]=uigetfile({'*.jpg;*.bmp;*.png;*.tif'},'Choose an image');
%s=[path,file];
picture=imread('image1.jpg');
[~,cc]=size(picture)
picture=imresize(picture,[300 500]);

if size(picture,3)==3
  picture=rgb2gray(picture);
end
threshold = graythresh(picture);
picture =~im2bw(picture,threshold);
picture = bwareaopen(picture,30);
imshow(picture)
imwrite(picture,'image2.jpg');