function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    clf();
    plot2d3(nx, xn, style=2);
    plot2d3(ny, yn, style=5);

    xlabel("n");
    ylabel("Amplitude");
    title("Folding");

    legend("x(n)", "y(n) = x(-n)");

endfunction
