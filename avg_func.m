
function [avg_fvec1 , avg_fvec2 , avg_fvec3 ,avg_fvec4, avg_fvec5] = avg_func()

A1 = double(1 -(im2bw(rgb2gray(imread('..path\A1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('..path\A2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('..path\A3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('..path\A4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('..path\A5.jpg')),0.8)));


avg_fvec1 = avg_fvec(A1,A2,A3,A4,A5);

A1 = double(1 -(im2bw(rgb2gray(imread('..path\B1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('..path\B2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('..path\B3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('..path\B4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('..path\B5.jpg')),0.8)));


avg_fvec2  = avg_fvec(A1,A2,A3,A4,A5);

A1 = double(1 -(im2bw(rgb2gray(imread('..path\C1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('..path\C2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('..path\C3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('..path\C4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('..path\C5.jpg')),0.8)));


avg_fvec3  = avg_fvec(A1,A2,A3,A4,A5);

A1 = double(1 -(im2bw(rgb2gray(imread('..path\D1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('..path\D2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('..path\D3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('..path\D4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('..path\D5.jpg')),0.8)));

avg_fvec4  = avg_fvec(A1,A2,A3,A4,A5);

A1 = double(1 -(im2bw(rgb2gray(imread('..path\E1.jpg')),0.8)));
A2 = double(1 -(im2bw(rgb2gray(imread('..path\E2.jpg')),0.8)));
A3 = double(1 -(im2bw(rgb2gray(imread('..path\E3.jpg')),0.8)));
A4 = double(1 -(im2bw(rgb2gray(imread('..path\E4.jpg')),0.8)));
A5 = double(1 -(im2bw(rgb2gray(imread('..path\E5.jpg')),0.8)));

avg_fvec5  = avg_fvec(A1,A2,A3,A4,A5);
end
