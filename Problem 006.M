% Question: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
%
% Answer: 25164150
% Runtime: .001520 seconds (vector) or .036482 seconds (loop)
% Commentary: Vector computation is generally faster than using loops (especially in MATLAB). Here's code for both methods.
%             Note: Must use .* over * when multiplying vector elements or MATLAB will perform Matrix multiplication.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

A=[1:100];

Square = A .* A;

S1=sum(Square);     % S1 is the sum of all squares 1:100

S2=sum(A).*sum(A);  % S2 is the square of the sum of 1:100

result=S2 - S1; 

disp(result)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear 
clc

S1=0;
S2=0;

for i=1:100
    S1=S1+(i*i);
    S2=S2+(i);
end
   
S2=S2*S2; 

result=S2 - S1; 

disp(result)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
