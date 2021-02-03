% Question: Find the largest palindrome made from the product of two 3-digit numbers.
%
% Answer: 906609
% Runtime: .261327 seconds
% Commentary: Coded a helper function called palin which checks if an object is a palindrome. It's important to start checking products from 999
%             instead of one so that we can output the first palindrome we find (since it will be maximum). 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[T]=palin(n)

str1=num2str(n);
str2=str1(length(str1):-1:1); % Flips the indices to set
                              % str2 as reverse of str1
if str1 == str2
  T=1;
else T=0;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

result=0;

for i=999:-1:100
    for j=i:-1:100  % Important to start counting down from i

        prod=i*j;

            if palin(prod)==1
                if prod > result
                    result=prod;
                    break
                end
            end
            
            if prod < result
                break
            end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
