% The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143?
%
% Answer: 6857
% Runtime: .170697 seconds
% Commentary: This code was designed with adaptability (for other numbers) in mind. While it may seem intuitive to count backwards 
%             to find the largest factor, it is much more efficient to start with the small factors and obtain their larger complements
%             through division. If none of the larger factors are prime, we then evaluate the second for loop. I used my own custom
%             function primecheck. 

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

n=600851475143;

for i=3:2:sqrt(n)            % Factors of an odd number must be odd
    
    if mod(n,i)==0           
        big=n./i;          % Starting with smallest factors of n means
        if primecheck(big)==1 % descending through largest complements, so
            disp(big)      % the first prime will be maximum
            break    
        end
    end

end

for j=floor(sqrt(n)):-1:3    % Check backwards through small factors
                             % if needed
    if mod(n,j)==0
        if prime(j)==1
            disp(j)
            break
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



