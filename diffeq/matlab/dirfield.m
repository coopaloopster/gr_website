function dirfield(tval,yval)  
%   
%   plot direction field for first order ODE y' = f(t,y)
%   using t-values from t1 to t2 with spacing of dt
%   using y-values from y1 to t2 with spacing of dy
%
%   for example, to plot a direction field for t in [-1,3], y in [-2,2], using
%   spacing of .2 for both t and y, you would use tval=-1:.2:3 and yval=-2:.2:2
%   so you would type dirfield(-1:.2:3,-2:.2:2) at the Matlab command line

% set up a grid of (t,y) values:
[t,y]=meshgrid(tval,yval);

% enter your function, using vector notation
dy = -y.^2+t; 
% !!! this needs to be changed to use different functions

% create a matrix of 1's of the same size as dy
dt = ones(size(dy)); 

% scale all direction field vectors to have unit length (divide each by its length):
L = sqrt(1+dy.^2); 

% the last part plots the direction field in red at all points on the grid
% without extra white space around the plot:
quiver(t,y,dt./L,dy./L,0.5,'.r'), axis tight; 

% notes:  

% 1) remove the period before r in the quiver command if you want your
% direction field vectors to have arrowheads on them
%
% 2) use hold on if you want to keep your direction field and add a solution curve to the plot
%
% to plot an exact solution, use the following:
%    hold on
%    y_exact = sqrt(tval.^2 + tval + 4);  % ENTER THE ACTUAL FUNCTION HERE
%    plot(tval,y_exact,'LineWidth',2)

