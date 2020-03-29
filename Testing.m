%Taking image as input
A1=imread('II.jpg');
A2= imresize(A1,.125);
A2 = imcrop(A2,[80 1 150 410]);
%A3=customFilter(A2);

A2=rgb2gray(A2);
A3=imreducehaze(A2);
A3=imadjust(A3);
A3=imsharpen(A3);

%A4=imbinarize(A3);
%A4 = im2bw(A3);
%se = strel('disk',10);
%closeBW = imopen(A4,se);
%figure, imshow(closeBW);
A9 = edge(A3,'Sobel');
A9=imcomplement(A9);

figure, imshow(A3);

%otsu
%level = graythresh(A3);
%BW = imbinarize(A3,level);
%B2 = bwskel(imbinarise(A4));


