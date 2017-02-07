function calc_diff ()
    % calculates the difference between the sum up until saturation
    % and Euler's convergence theory (pi^2/6), as well as the
    % proposed 'better' method
    %   s0 = 'exact' sum s
    %   s1 = calculated sum 
    %   s2 = more precise sum
    
    
    %%%%%%%%%%%%%%         FIRST ALGORITHM              %%%%%%%%%%%%%%%%%%
    
    s0 = (pi.^2)/6; % Euler approximation
    [i, s1] = basel();
    acc = (s0-s1)/s0;
    
    fprintf('%12d %18.16f %18.16f %8.1e\n', i-1, s0, s1, acc);
    
    %%%%%%%%%%%%%%         SECOND ALGORITHM              %%%%%%%%%%%%%%%%%%
    
    s0 = (pi.^2)/6; % Euler approximation
    [i, s1] = basel();
    acc = (s0-s1)/s0;
    
    fprintf('%12d %18.16f %18.16f %8.1e\n', i-1, s0, s1, acc);
    