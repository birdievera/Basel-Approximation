function [i, sum] = basel(n)
    % returns the value of basel's algorithm at given n
    % Note: should equate to approximately (pi^2)/6 in infinity
    
    if ~exist('n','var') || n == Inf
        n = 10.^6;
    end
    
    sum = 0;
    prev_sum = 0;
    
    % sum up to n and return i when saturated
    for i=1:n
        prev_sum = sum;
        sum = sum + (1/i.^2);
        
        if prev_sum == sum
            break;
        end
    end
