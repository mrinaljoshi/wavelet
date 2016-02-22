
function [f_vect] = feature_vector(A)

centroid_tempx = zeros(1,size(A,1));
centroid_tempy = zeros(1,size(A,2));
D = zeros(1,size(A,1));


for m= 1:size(A,1)
        centroid_tempy(m) = sum(m*A(m,:));
        D(m) = sum(A(m,:));
end
for j= 1:size(A,2)
        centroid_tempx(j) = sum(j*A(:,j));
end
D = sum(D);
centroid_y = sum(centroid_tempy)/D;
centroid_x = sum(centroid_tempx)/D;

figure()
imshow(A);
hold on 
plot(centroid_x,centroid_y,'r*')


C = zeros(size(A));

for u = 1:size(A,1)
   for j = 1:size(A,2)
        if(A(u,j) == 1)
           C(u,j) = floor(sqrt((u-centroid_y)^2 + (j-centroid_x)^2)) ;
        end
   end
end

[Min , I1 ] = max(C);
[M,I] = max(Min);
y = I1(I);
x  = I;
hold on 
plot(x,y,'b*')
title('Centroid is red * and point with max dist from centroid is blue*')
k = 1;
Ar = cell(M,1);

for k = 1:size(A,1)
   for j = 1:size(A,2)
       if(C(k,j) <= M && C(k,j)~=0 )
            Ar{C(k,j),1}(size(Ar{C(k,j),1})+1) = atan2(k-centroid_y,j-centroid_x);
       end
   end
end
 
figure()
imshow(A)
title('Ring Projection')
for r = 1: 40: M;
for k = 1:size(Ar{r,1},2)
            theta = Ar{r,1}(k);
                 hold on
                 plot(round(r*cos(theta)+ centroid_x) , round(r*sin(theta) + centroid_y), 'rx');
end
 
end   


temp = cell(4,1);
t = 0;
Q = 3;
for q = 0:Q;
    for r = 1: M;
        for k = 1:size(Ar{r,1},2)
                theta = Ar{r,1}(k);
                t =  t + A( floor(r*cos(theta)+ centroid_x) , floor(r*sin(theta) + centroid_y))*exp(1i*theta*q);
         end
        temp{q+1,1}(r) = t;
    end
end

r = 1:M;
r_01= 1/M : (M-1)/(99*M):1 ;
f_vect = cell(4,7);

for q = 1:Q+1 ;% 1 to 4

Sq = temp{q,1};
Sqr = Sq(floor(M*r_01));
Sqr_r = r_01 .* Sqr;
X = abs(Sqr) ;
f_vect{q,1} = abs(X);

[C1,L1] = wavedec(X,1,'db4');
V0 = C1(1:L1(1));
W0 = C1(L1(1)+1 : length(C1));
f_vect{q,2} = abs(V0);
f_vect{q,3} = abs(W0);

[C2,L2] = wavedec(V0,1,'db4');
V1 = C2(1:L2(1));
W1 = C2(L2(1)+1 : length(C2));
f_vect{q,4} = abs(V1);
f_vect{q,5} = abs(W1);

[C3,L3] = wavedec(V1,1,'db4');
V2 = C3(1:L3(1));
W2 = C3(L3(1)+1 : length(C3));
f_vect{q,6} = abs(V2);
f_vect{q,7} = abs(W2);

figure()

subplot(4,2,1),plot(abs(X),'k')
title('1D transform of image')
subplot(4,2,3),plot(abs(V0),'r')
title('V0')
subplot(4,2,5),plot(abs(V1),'r')
title('V1')
subplot(4,2,7),plot(abs(V2),'r')
title('V2')
subplot(4,2,4),plot(abs(W0),'b')
title('W0')
subplot(4,2,6),plot(abs(W1),'b')
title('W1')
subplot(4,2,8),plot(abs(W2),'b')
title('W2')

end

end
