% There exists exactly one Pythagorean triplet of natural numbers (a,b,c) for which a + b + c = 1000.
% Find the product abc. Pythagorean triplet conditions: a^2 + b^2 = c^2.
%
% Answer: 31875000
% Runtime: .037514 seconds
% Commentary: We can set b > a in order to start the for loop at a+1. (Why? Assume a=b. Then a^2+a^2=1000=2*a^2 --> a^2 = 500.
%             It follows that a= ~22.3607, but then a is not a natural number!)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

a=1;

while(a<1000)
  for b=a+1:1000 
    
    c=1000-a-b;    
    if a*a+b*b==c*c
        disp(a*b*c)
        break
    end
    
  end  
  a=a+1;  
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
