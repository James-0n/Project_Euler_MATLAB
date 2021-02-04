% Question: Find the sum of all the primes below two million.
%
% Answer: 142913828922
% Runtime: 0.461019 seconds
% Commentary: We can achieve reasonable speed coding our own function 'listprimes' with an ancient math algorithm called the Sieve of Eratosthenes. 
%             This will efficiently create a truth array for primes wherby if the value of the array at an index i is 1, then i is prime. 
%             (Ex: A(7)==1 --> 7 is a prime). 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A]= listprimes(n)

A(1)=0; 

for i=2:n                 % Intialize all true array (except for one, which is non-prime, even though
   A(i)=1;                % Eratosthenes considered it to be prime!). 
end

x=2;         

while x^2 <= n             % Start x at 2, for all other indices of A which are multiples of 2 
       if A(x) == 1        % change the result to false (0). Then increment to the next prime in
          A(x^2:x:n)=0;    % the list and continue to sqrt(n). 
       end
       x=x+1;
end  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

A=listprimes(2000000);

for i=1:2000000
    if A(i)==1
        A(i)=i;
    end
end
    
disp(sum(A))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
