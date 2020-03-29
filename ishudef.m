function ishudef(O,T)
im0= O;
im0= imresize(im0,.125);

b0=rgb2gray(im0);
bv0=im2bw(b0);
white0=sum(im0(:));
black0=numel(im0)-white0;

imT = T;
imT= imresize(imT,.125);

bT=rgb2gray(imT);
bvT=im2bw(bT);
whiteT=sum(imT(:));
blackT=numel(imT)-whiteT;

%subplot(2,2,1), imshow(im0);title('Reference Image');
%subplot(2,2,2), imshow(bv0);title(['Black pixels of reference image =',num2str(black0)]);
%imshow(imT);title('Test Image');
%subplot(1,2,2), imshow(bvT);title(['Black pixel of test image =',num2str(blackT)]);


n1 = blackT
n2 = black0;

if n1>n2
    status=1;
    disp('Defect found');
else
    if n1<n2
        status=1;
        disp('Defect found');
    else
        status=0;
    disp('Defects not found');
    end
end
if status == 1
    myicon =  imread('delete.png');
    h= msgbox('Defect found','Defect Detection Result','custom',myicon);
else
    myicon = imread('tick.png');
    h= msgbox('Defect not found','Defect Detection Result','custom',myicon);
end