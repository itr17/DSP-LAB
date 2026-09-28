function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    
    yorigin = xorigin + horigin - 1;
    
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    
    clf();
    
    subplot(3, 1, 1);
    plot2d3(nx, xn);
    plot(nx, xn, 'ro');
    title('Input Signal x(n)');
    xlabel('n'); ylabel('Amplitude');
    xgrid();
    
    subplot(3, 1, 2);
    plot2d3(nh, hn);
    plot(nh, hn, 'go');
    title('Impulse Response h(n)');
    xlabel('n'); ylabel('Amplitude');
    xgrid();
    
    subplot(3, 1, 3);
    plot2d3(ny, yn);
    plot(ny, yn, 'bo');
    title('Output Signal y(n) = x(n) * h(n)');
    xlabel('n'); ylabel('Amplitude');
    xgrid();
endfunction

// Example
[yn, yorigin] = convolution([1, 2, 1], 2, [1, -1], 1)
