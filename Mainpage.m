% Taking image as input
%A1=imread('IV.jpg');
%B1=imread('IX.jpg');
function Mainpage(O,T)
A1=O;
B1=T;
% Resizing the Image to scale 1/4
A2= imresize(A1,.125);
B2= imresize(B1,.125);
% Removing shadow from image
A3=customFilter(A2);
B3=customFilter(B2);
% Converting Image from RGB to Binary
A4 = im2bw(A3);
B4 = im2bw(B3);
% Displaying Images
%figure,imshow(A4);title('Original image');
%figure,imshow(B4);title('Test image');
levelTest(A4,B4);

