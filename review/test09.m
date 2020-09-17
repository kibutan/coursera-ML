A = [1,2,3;4,5,6;7,8,9;10,11,12;13,14,15];
B = [16,17,18,19,20;21,22,23,24,25;26,27,28,29,30];
C = A*B;
R = [0,1,0,1,0;1,0,1,0,1;0,0,1,1,1;1,1,0,0,0;1,1,1,1,1]
total = 0;
for i = 1:5
  for j = 1:5
    if (R(i,j) == 1)
      total = total + C(i,j);
    end
  end
end
total2 = total;

% selection A
totalA = sum(sum((A*B).*R))

%B
C = (A*B).*R
totalB=sum(C(:))


%C
totalC = sum(sum((A*B)*R))

%D
C = (A*B)*R
totalD = sum(C(:))
