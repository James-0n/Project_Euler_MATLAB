% Question: The following iterative sequence is defined for the set of positive integers: n → n/2 (n is even) n → 3n + 1 (n is odd).
%           Which starting number, under one million, produces the longest chain (Collatz sequence)?
%
% Answer: 837799
% Runtime: 4.131570 seconds
% Commentary: One important mathematical realization for this problem is that the starting number which produces that longest chain
%             cannot be even; this is a logical conclusion of the following two facts:
%             (1) If a,b are even and a > b, then starting the sequence at a must form a larger chain
%             (2) Every chain starting at an odd number x is longer than the chain starting at even number (3*x)+1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

count=1;
max=0;

for x=3:2:999999
    n=x;
    while n ~= 1
        if mod(n,2) == 1
            n=(3*n)+1;
            count=count+1;
        else
            n=n/2;
            count=count+1;
        end
    end
    
    if count > max
        max=count;
        result=x;
    end
    count=1;
    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
