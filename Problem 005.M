% 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder. 
% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
%
% Answer: 232792560
% Runtime: 1.561245 seconds
% Commentary: This problem is simple, but there is a neat mathematical optimization. Checking every single integer n for twenty mod conditions would
%             waste a ton of time. However, if we recognize that if n is divisble by 20, it is also divisible by factors of 20 (1,2,4,5,10), we can
%             be much more efficient. We know:
%             20 -> 1,2,4,5,10 ; 18 --> 3,6,9 ; 16 --> 8 ; 14 --> 7
%             So now we only have to check for divisors 11-20.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

for n=20:20:1000000000000   % Increment checks by 20 since any possible solution must be div. by 20

  for i=11:20 
    if mod(n,i)~=0 
      break 
    end
  end

if i==20 
  result=n; 
  break 
end

end

disp(result)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
