close all; clear all;

t=128;
for i=1:256
    for j=1:256
        A(i,j)=(i-1);
        dist=sqrt((i-t)^2+(j-t)^2);
        
        if(dist < threshold)
            B(i,j)=255;
        else
            B(i,j)=0;
        end;
    end;
end;

figure,imshow(A);
figure,imshow(B);


close all; clear all;

A=imread('C:\Users\ulasg\OneDrive\Resimler\Screenshots\Ekran Görüntüsü (34).png');

figure,imshow(A);







close all; clear all;
F=zeros(10);
F(5,5)=1;
W=[1 2 3;4 5 6;7 8 9];
C=conv2(F,W,'Same');
D=conv2(F,W,'Full');


close all; clear all;
f=[1 1 1 1 10 10 10 10;
   1 1 6 1 8 10 2 10;
   1 3 1 1 9 10 7 10;
   1 1 1 2 8 9 10 10;
   1 1 1 1 10 10 10 10];
w=[1/9 1/9 1/9;
    1/9 1/9 1/9;
    1/9 1/9 1/9];
C=conv2(f,w,'same');
D=uint8(C);

figure,imagesc(f);
figure,imagesc(D);



close all; clear all;
x=[zeros(256,256) ones(256,256)
    ones(256,256) zeros(256,256)];

z=double(x);
imshow(z);

h=1/41*ones(41,41);
y=imfilter(z,h);
imshow(y,[]);






close all; clear all;

A=imread('');
B=rgb2grey(A);
figure,imshow(B);
[M N]=size(B);
C=zeros(M-1,N-1);
for i=2:M-1
    for j=2:N-1
        w=B(i-1:i+1,j-1:j+1);
        Min=min(min(w(:)));
        C(i-1,j-1)=Min;
    end
end;

figure,imshow(uint8(C));






close all; clear all;










