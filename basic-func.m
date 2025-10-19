# This program explores the basic functions of GNU Octave.

linspace(start, end, N) # generates a row vector of a specified number
                        # of evenly spaced points between two defined endpoints

disp('Math is powerful') #Displays a sentence in the Command Window

clc #Clears command window
clear #Clears workspace memory variables

pkg load symbolic #Loads the symbolic package, similar to import in python
syms x # Defines x as a symbol



#To run a particular part of the program, select the lines and hit F9 or right click > Run Selection

# Example program

pkg load symbolic

syms x


% Define a function in x and its value at a point and its root
f(x) = x^2-2*x+1
f(2)
r = solve(f)

% Define a position vector inside square brackets and return its roots numerically
p = [1 -2 1]
s = roots(p)
q = [1 1 -1]
s = roots(q)

% Define two simulataneous equations and solve them
f1 = 1-x
f2 = x^2
r = solve(f1, f2, x)

% Solving a system of equations
syms x y
f = x-2*y-1
g = x+2*y+1
[x,y]=solve(f,g)

