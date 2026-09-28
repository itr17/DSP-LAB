function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    n_y = n_min:n_max; 
    
    y1 = zeros(1, length(n_y));
    y2 = zeros(1, length(n_y));
    
    idx1_start = find(n_y == n1(1));
    idx1_end = idx1_start + length(x1n) - 1;
    y1(idx1_start:idx1_end) = x1n;
    
    idx2_start = find(n_y == n2(1));
    idx2_end = idx2_start + length(x2n) - 1;
    y2(idx2_start:idx2_end) = x2n;
    
    yn = y1 .* y2;
    
    yorigin = find(n_y == 0);
    
    clf(); 
    
    subplot(3, 1, 1);
    plot2d3(n1, x1n); 
    plot(n1, x1n, 'ro'); 
    title('Signal x1(n)');
    xlabel('n'); ylabel('Amplitude');
    xgrid();
    
    subplot(3, 1, 2);
    plot2d3(n2, x2n);
    plot(n2, x2n, 'go'); 
    title('Signal x2(n)');
    xlabel('n'); ylabel('Amplitude');
    xgrid();
    
    subplot(3, 1, 3);
    plot2d3(n_y, yn);
    plot(n_y, yn, 'bo'); 
    title('Output Signal y(n) = x1(n) * x2(n)');
    xlabel('n'); ylabel('Amplitude');
    xgrid();
endfunction

// Example
[yn, yorigin] = multi([0, 1, 3, -2], 1, [1, 1, 2, 3], 2)
