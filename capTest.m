function capTest(O,T)
[m,n]=size(O);
count1=0;
for i=1:m
        for j=1:n
    
            if O(i,j)==0
            count1=count1+1;
            end
        end
end 
disp(count1);
[m,n]=size(T);
count2=0;
for i=1:m
        for j=1:n
    
            if T(i,j)==0
            count2=count2+1;
            end
        end
end    
disp(count2);
diff = count1-count2;
if diff > 500
        status = 1;
    else
        status = 0;
end
if status == 1
    disp(' CAP IS NOT PRESENT ');
    myicon =  imread('delete.png');
    h= msgbox('Cap not Present','Cap Detection Result','custom',myicon);
else
    disp(' CAP IS PRESENT ');
    myicon = imread('tick.png');
    h= msgbox('Cap is Present','Cap Detection Result','custom',myicon);
end
end

