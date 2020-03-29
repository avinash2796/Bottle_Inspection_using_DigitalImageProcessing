% Taking image as input
A=imread('one.jpg');
B=imread('nine.jpg');
C=imread('five.jpg');
% Resizing the Image to scale 1/4
A2= imresize(A,.25);
B2= imresize(B,.25);
C2= imresize(C,.25);
% Rotating the Image by 90 degree 
A3 = imrotate(A2,-90);
B3 = imrotate(B2,-90);
C3 = imrotate(C2,-90);
% Removing haze from images
A4 = imreducehaze(A3);
B4 = imreducehaze(B3);
C4 = imreducehaze(C3);
% Converting Image from RGB to Binary
A5  = im2bw(A4);
B5 = im2bw(B4);
C5 = im2bw(C4);

se = strel('arbitrary',16);
closeBW = imclose(gpuArray(C5),se);
%figure, imshow(closeBW);title('Erosion and dilation');
% Showing original Image
%figure,imshow(A5);title('Original image 1');
%figure,imshow(B5);title('Original image 2');
%figure,imshow(C5);title('Original image 3');


