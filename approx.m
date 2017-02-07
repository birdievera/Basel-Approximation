function [i, sum] = approx(n)
    % returns the value of basel's algorithm at given n
    % which should be accurate within 10 digits
    
    if ~exist('n','var') || n == Inf
        n = 10.^6;
    end
    
    sum = 0;
    prev_sum = 0;
    x = (pi.^2)/6;
    
    % sum up to n and return i when saturated
    for i=1:n
        prev_sum = sum;

        sum = sum + ((-1+x).^i)*((-1).^i)*(1+i);
        
        if prev_sum == sum && i > 100
            break;
        end
    end
    
    
        %sum = sum + 1/(i.^2 * pi.^2); %(1/i.^2);
        %if i ~= 1
        %   sum = sum + ( (1/(i-1)) - (1/i) ); 
        %end
%         if i ~= 1
%             sum = sum + factorial(2)/(factorial(i-2)*factorial(i));
%         else
%            sum = sum + 1; 
%         end
