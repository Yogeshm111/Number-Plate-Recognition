a=imread('image2.jpg');
figure;
imshow(a);
b=imcrop(a,[10 25 500 225]);
figure;
imshow(b);
imwrite(b,'final_image.jpg');