function [y_numeric,y_exact] = sample_eul(tspan, y0, h)

% This sample finds numerical (approximate) y_numeric and exact (true, analytic) y_exact solutions
% to the initial value problem
% y' = f(t,y)
% y(0) = y0
% The function f(t,y) is defined in the file yprime.m
% For this example f(t,y) = (2t + 1)/(2y)
% y0 is the initial value. 
% h is the step size
% Both solutions are calculated and plotted on the interval tspan = [t0, tfinal], 
% where t0 is the initial value of t, and tfinal is the final value of t.
% The numerical solution y_numeric is found by using the Euler method.
% The exact solution for this example with y0=2 is y_exact = (t^2 + t + 4)^(1/2)

[t, y_numeric] = eul('yprime', tspan, y0, h); % the Euler method
% The first argument is the m-file yprime.m with y_prime function that returns the right hand
% side (2t + 1)/(2y) of the given equation.
% The second argument tspan represents the domain of the solution [t0, tfinal]
% The third argument is the initial value of y: y(0) = y0
% The fourth argument is the step size h
% Returned values are the vector t of points on the domain tspan 
% and the vector y_numeric of numerical solutions of the equation y' = (2t + 1)/(2y). 

y_exact = sqrt(t.^2 + t + 4);   % vector of values of exact solution y_exact.
% !!! The previous line has to be changed for different problems !!!

plot(t,y_exact,'r','LineWidth',2)   % plot of the exact solution y_exact (red curve)
hold on

plot(t,y_numeric,'*','LineWidth',1.5)  % plot of the numerical solution y_numeric (blue asterisks) 
hold off

% If you would like to use this file with different y0 then the constant 4 may change.

% If you would like to use this file for different f(t,y) then you have to 
% change the file yprime.m and find the corresponding exact solution.
