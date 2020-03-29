% Taking image as input
A1=imread('XII.jpg');
B1=imread('XIV.jpg');
% Resizing the Image to scale 1/4
A2= imresize(A1,.125);
B2= imresize(B1,.125);

A2 = imreducehaze(A2);
B2 = imreducehaze(B2);

% Converting to Grayscale Image
I1=rgb2gray(A2);
I2=rgb2gray(B2);
I1=imadjust(I1);
I2=imadjust(I2);

% Detecting edges from image
A3 = edge(I1,'Sobel');
B3 = edge(I2,'Sobel');
% Displaying Images
figure,imshow(A3);title('Perfect Bottle image');
figure,imshow(B3);title('Defected Bottle image');


