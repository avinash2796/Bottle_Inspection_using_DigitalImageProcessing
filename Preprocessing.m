% Taking image as input
A1=imread('three.jpg');
C1=imread('four.jpg');
D1=imread('eight.jpg');
% Resizing the Image to scale 1/4
A2= imresize(A1,.25);
C2= imresize(C1,.25);
D2= imresize(D1,.25);
% Rotating the Image by 90 degree 
A = imrotate(A2,-90);
C3 = imrotate(C2,-90);
D3 = imrotate(D2,-90);

% Converting Image from RGB to Binary
B  = im2bw(A);
C4 = im2bw(C3);
D4 = im2bw(D3);


I2 = imcrop(B,[100 1 140 110]);
I3 = imcrop(C4,[100 1 140 110]);
I4 = imcrop(D4,[100 1 140 110]);

% Converting RGB to Grey Scale Image
C=rgb2gray(A);
% Removing Label from Image
B1=bwselect(B,50,150,8);
% Extracting the Red Channel
R = A(:,:,1); 
% Edge Filtering in Image
h = fspecial('laplacian', 0.04);
fil=imfilter(B,h);
% Displaying Images
% Showing original Image
%figure,imshow(A);title('Original image');
figure,imshow(D3);title('Test image');
%figure,imshow(fil);title('Filtered image');
%figure,imshow(R);title('Red  image');
%figure,imshow(B);title('BW image');
%figure,imshow(C);title('Greyscale Image');
%figure,imshow(B1);title('B1 select');
%figure,imshow(I2);title('Crop Cap Image');
%figure,imshow(I3);title('Crop No Cap Image');
figure,imshow(I4);title('Crop  Cap Image II');
%capTest(I2,I3);
capTest(I2,I4);




