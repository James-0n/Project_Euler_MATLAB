% Question: What is the 10 001st prime number?
%
% Answer: 104743
% Runtime: .903060 seconds
% Commentary: Putting an algorithm to check if a number is prime in the same code calculating the 10 001st prime would be messy. Instead I will
%             write a custom function called primecheck first. 
%             There are two important time saves here: One is for the function; when checking if an input number (n) is
%             prime, we only need to check potential factors up to its square root. This is because in every pair of factors (with the exception
%             of perfect squares), one will be smaller than the square root and the other higher (Ex: sqrt(64)=8. The non trivial factor pairs are
%             *2,32* *4,16* and *8,8*, so we will detect that 64 is not prime only checking up to 8.)
%             The second is in the code implementing our function; simply start checking at an odd number, and increment by two instead of one, as
%             we know all even numbers (except 2) will be non-prime. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [x] = primecheck(n)

x=1;

if n == 2
    x=1;
elseif n==1 || mod(n,2)==0
    x=0;
else
    for i=2:sqrt(n)
        if mod(n,i)==0
            x=0;
        end
    end
end 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

c=1;
n=3;

while c < 10001
    if primecheck(n)==1
        c=c+1;
    end
    n=n+2;
end

disp(n-2)                 % Be sure to subtract the two that was added on to n in the last loop evaluation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
