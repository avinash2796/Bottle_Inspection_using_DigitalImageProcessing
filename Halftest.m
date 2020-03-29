A = imread('five.jpg');
C = rgb2gray(A);
B = imbinarize(C);

figure,imshow(A);title('Original image');
figure,imshow(B);title('Binary image');
