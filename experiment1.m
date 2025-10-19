% Experiment 1

# To find the stationary point of a function

pkg load symbolic
syms x y

f = x^2 - 2*x*y - y^2 + 2*x - 2*y -3

p = diff(f,x)
q = diff(f,y)

[x,y]=solve(p,q)
disp(['The stationary point is','(', char(x), ',', char(y), ')'])

% Plotting a point
plot(0,1, 'MarkerSize',25)

% Plotting a curve
x =linspace(-1,1,50) % Defining the line space

y=x.^2 % Defining a parabola
plot(x,y)

y=x.^3 % Defining a cubic curve
plot(x,y)

% Plotting a circle using polar coordinates

t = linspace(0,2*pi,50) % Defining the range of theta
x=5*cos(t) % Defining polar coordinates
y=5*sin(t)
plot(x,y)

% Plotting the bottom half of a circle using rectangular coordinates
pkg load symbolic
syms x y
x = linspace(-1,1,100)
y = sqrt(1-x.^2)
plot(x,y,'r','LineWidth',2)
plot(x,-y)

% Plotting a hyperbola
pkg load symbolic
syms x y
x=linspace(-2,2,100)
y=sqrt(x.^2-1)
plot(x,y,'r','LineWidth',2)
hold on % To draw multiple graphs, use holdon
plot(x,-y,'r','LineWidth',2)


% Plotting a hyperbola using hyperbolic functions
t = linspace(-1, 1, 100)
x = cosh(t)
y = sinh(t)
plot(x, y, 'b')
hold on
plot(-x, -y, 'b')


% Moving animation of a point traveling along a sine wave.
x = linspace(0, 2*pi, 100)
y = sin(x)
plot(x, y, 'b')
n = numel(x);

for i = 1:n % This loop animates a dot moving along the curve:
    clf
    plot(x, y, 'b')
    hold on
    plot(x(n-i+1), y(n-i+1), 'b', 'Markersize', 10)
    pause(.001);
end



% To visualize the surface of a paraboloid along with its contour lines
x = linspace(-1, 1, 50)
y = linspace(-2, 2, 50)
[X, Y] = meshgrid(x, y)
Z = X.^2 + Y.^2
surf(X, Y, Z, 'FaceAlpha', .75, 'LineStyle', 'none')
hold on
contour(X, Y, Z)
contour3(X, Y, Z, 'r')

% Program to plot a design on a graph
x = linspace(0, 1, 20)
y = 1 - x
plot(i, 1-i)
hold on
for i = 0:0.05:1
    plot([i, i], [0, 1-i])
end
