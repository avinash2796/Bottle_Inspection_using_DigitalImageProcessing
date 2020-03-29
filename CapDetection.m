function CapDetection(O,T)
% Taking image as input
A1=O;
C1=T;
% Resizing the Image to scale 1/4
A2= imresize(A1,.125);
C2= imresize(C1,.125);
% Converting Image from RGB to Binary
B  = im2bw(A2);
C4 = im2bw(C2);


I2 = imcrop(B,[100 1 140 110]);
I3 = imcrop(C4,[100 1 140 110]);

% Displaying Images
% Showing original Image
%figure,imshow(A);title('Original image');
%figure,imshow(D2);title('Test image');
%figure,imshow(fil);title('Filtered image');
%figure,imshow(R);title('Red  image');
%figure,imshow(B);title('BW image');
%figure,imshow(C);title('Greyscale Image');
%figure,imshow(B1);title('B1 select');
%figure,imshow(I2);title('Crop Cap Image');
%figure,imshow(I3);title('Crop No Cap Image');
%figure,imshow(I4);title('Crop  Cap Image II');
capTest(I2,I3);





