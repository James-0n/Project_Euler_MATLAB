% Question: What is the sum of the digits of the number 2^1000?
%
% Answer: 1366
% Runtime: .006907 seconds
% Commentary: This number has too any digits to store as an integer, but if we store 2^1000 as a symbolic variable (expression) intead, then we
%             operate on its digits. There's not much else to this problem.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

n=char(sym(2^1000));
sum=0;

for i=1:length(n)
    sum=sum+str2double(n(i));
end

disp(sum)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
