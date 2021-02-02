% Question: By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
%
% Answer: 4613732
% Runtime: .044386 seconds
% Commentary: The idea is to create an array A of all Fibbonacci numbers below four million and check if each element is even as it's being
%             added to the array. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

A(1)=1;                      % Initialize first two terms for
A(2)=2;                      % recursive definition

result=2;                    % A(2)=2 is even, so start sum at 2

i=3;

while A < 4000000            % No term in sequence exceeds four million

A(i)=A(i-1)+A(i-2);          % This defines our terms

    if mod(A(i),2)==0        % Check for evenness 
       result=result+A(i); 
    end
    
i=i+1; 

end

disp(result)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
