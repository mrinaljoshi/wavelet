 close all
 clear all

[avg_fvec1 , avg_fvec2 , avg_fvec3 ,avg_fvec4, avg_fvec5] = avg_func();
%D1 C1 C3 B3 

%%for illustration
A = double(1 -(im2bw(rgb2gray(imread('C:\Users\Mrinal\Downloads\Old asgns\Old asgns\Wavlet\Project\Pictures\A1.jpg')),0.8)));
[f_vect] = feature_vector(A);

%%testing image
A = double(1 -(im2bw(rgb2gray(imread('C:\Users\Mrinal\Downloads\Old asgns\Old asgns\Wavlet\Project\Pictures\E.jpg')),0.8)));
[f_vect] = feature_vector(A);
fvec_test = zeros(4,302);

for i = 1:4
fvec_test(i,:) = [f_vect{i,1}, f_vect{i,2} , f_vect{i,3}, f_vect{i,4}, f_vect{i,5}, f_vect{i,6}, f_vect{i,7}];
end

B = zeros(4, 5*size(fvec_test,2));
B(:,1:302) = avg_fvec1;
B(:,303:604) = avg_fvec2;
B(:,605:906) = avg_fvec3;
B(:,907:1208) = avg_fvec4;
B(:,1209:1510) = avg_fvec5;
dist = zeros(1,5);

for i =1:5
    dist(i) = norm (B(:,(i-1)*302 + 1:i*302) - fvec_test);
end
[value,index] = min(dist);

