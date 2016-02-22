%% training set
n=260; 
A= randn(7,n);

%% finding average of five font sizes
sum = zeros(7,52);
for i= 1:52
    for j= 1:5
        sum(1:7,i)= sum(1:7,i)+(A(1:7,j+((i-1)*5)))/5;
    end
end


%% test set

B= randn(7,1);
% B1= B';


%% comparing 

for k=1:52
    distance(k)=norm(B-sum(1:7,k));
end
min_dist= distance(1);
index = 1;
for l= 2:52
    if  distance(l) < min_dist
        index=l;
    end
end

%% converting index to character

% all odd are small letters and evens are capitals

if (mod(index,2)==0 )
    out= char((index/2) + 64)
else
    out= char(((index+1)/2)+96)
end


%% Kmeans for clustering and centroids of clusters

% A1= A';
% [X,C]=kmeans(A1,26);

%% comparing the test image matrix with the centroids of clusters and selecting the one with the least mean square error
% d=zeros(26,1);
% for i = 1:26
% d(i,1:7)= (B1 - C(i,1:7));
% dist(i)=norm(d(i,1:7));
% end
% 
% min= dist(1);
% index = 1;
% for i=2:26
%     if dist(i)< min
%         min =dist(i);
%         index = i;
%     end
% end
% 
% i