% Question: If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
% Find the sum of all the multiples of 3 or 5 below 1000.
%
% Answer: 233168
% Runtime: .000988 seconds
% Commentary: No tricks here

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

result=0;   

for n=1:999 

if mod(n,3)==0||mod(n,5)==0  % '||' operator saves time over '|' since if the first condition
                             % is true, then the second condition will not be evaluated.
result=result+n;           

end

end

disp(result)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
