
function [avg_fvec1 , avg_fvec2 , avg_fvec3 ,avg_fvec4, avg_fvec5] = avg_func()
A1 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\A1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\A2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\A3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\A4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\A5.jpg')),0.8)));

avg_fvec1 = avg_fvec(A1,A2,A3,A4,A5);

A1 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\B1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\B2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\B3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\B4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\B5.jpg')),0.8)));

avg_fvec2 = avg_fvec(A1,A2,A3,A4,A5);

A1 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\C1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\C2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\C3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\C4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\C5.jpg')),0.8)));

avg_fvec3 = avg_fvec(A1,A2,A3,A4,A5);

A1 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\D1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\D2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\D3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\D4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\D5.jpg')),0.8)));

avg_fvec4 = avg_fvec(A1,A2,A3,A4,A5);

A1 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\E1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\E2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\E3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\E4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('C:\Users\sivagee\Documents\SEM 8\Wave\Project\Pictures\E5.jpg')),0.8)));

avg_fvec5 = avg_fvec(A1,A2,A3,A4,A5);
end
