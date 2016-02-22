function [avg_fvec1] = avg_fvec(A1,A2,A3,A4,A5)

f_vect1 = feature_vector(A1);
f_vect2 = feature_vector(A2);
f_vect3 = feature_vector(A3);
f_vect4 = feature_vector(A4);
f_vect5 = feature_vector(A5);

avg_fvec = cell(4,7);

for q = 1:4
    for v = 1:7 
        avg_fvec{q,v} = (f_vect1{q,v}+f_vect2{q,v} + f_vect3{q,v} + f_vect4{q,v}+ f_vect5{q,v})/5 ;
    end
end

avg_fvec1 = zeros(4,302);

for i = 1:4
    
avg_fvec1(i,:) = [ avg_fvec{i,1}, avg_fvec{i,2},avg_fvec{i,3},avg_fvec{i,4},avg_fvec{i,5},avg_fvec{i,6},avg_fvec{i,7}];
end

end

