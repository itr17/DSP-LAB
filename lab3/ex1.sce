function [yn, yorigin] = delay(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin - k;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;

    clf();
    plot2d3(nx, xn, style=2);
    plot2d3(ny, yn, style=5);

    xlabel("n");
    ylabel("Amplitude");
    title("Delay");

    legend("x(n)", "y(n) = x(n-k)");
endfunction
