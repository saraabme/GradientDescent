% Implement gradient descent for a convex quadratic function

% min: f(x) = (1/2) x^T Qx + q^T x

% Where Q is a (strictly) positive definite matrix, i.e., it is symmetirc and all its eigenvalues are strictly positive

% Implement gradient descent using three step size choices: nt = 1/t ; nt = 1/sqrt(t) ; nt = n (i.e. for a fixed n)

% Randomly generate data (make sure that your Q matrix is symmetric and strictly positive definite) and plot the results for the first two choices on nt.
% For the third, find values of n for which gradient descent converges, and for which it diverges.


% Write objective function f(x):
f = @(x) (x(1))^2/2 + (x(2))^2 +x(1);
gradf = @(x) [x(1)+1; 2*x(2)];

% Keep in mind that we know optimal solution X* = (-1,0)

% Initial guess:
Initial = [-5;3];

% set number of iterations:
N = 100;

%%%%%%%%%%%
% For nt = 1/t

% set step size:
t = 1:1:N;
nt = 1./t;

% Record steps and initialize:
recordstep = [Initial];
recordfunction = [F(Initial)];
nextX = Initial; 

% Start iterations:
for i = 1:N 
    nextX = nextX - nt(i)*gradf(nextX);
    recordstep = [recordstep, nextX]
    recordfunction = [recordfunction, nextX]
end

recordstep
recordfunction

%Display results:
plot3(recordstep(1,:), recordstep(2,:), recordfunction)

%%%%%%%%%%%
% For nt = 1/(sqrt(t))

% set step size:
t = 1:1:N;
nt = 1./sqrt(t);

% Record steps and initialize:
recordstep = [Initial];
recordfunction = [F(Initial)];
nextX = Initial; 

% Start iterations:
for i = 1:N 
    nextX = nextX - nt(i)*gradf(nextX);
    recordstep = [recordstep, nextX]
    recordfunction = [recordfunction, nextX]
end

recordstep
recordfunction

%Display results:
plot3(recordstep(1,:), recordstep(2,:), recordfunction)


%%%%%%%%%%%
% For nt = 0.04
N = 200;

% set step size:
t = 1:1:N;
nt = 0.04*ones([1,200]);

% Record steps and initialize:
recordstep = [Initial];
recordfunction = [F(Initial)];
nextX = Initial; 

% Start iterations:
for i = 1:N 
    nextX = nextX - nt(i)*gradf(nextX);
    recordstep = [recordstep, nextX]
    recordfunction = [recordfunction, nextX]
end

recordstep
recordfunction

%Display results:
plot3(recordstep(1,:), recordstep(2,:), recordfunction, 'x')


%%%%%%%%%%%
% For nt = 1
N = 200;

% set step size:
t = 1:1:N;
nt = 1*ones([1,200]);

% Record steps and initialize:
recordstep = [Initial];
recordfunction = [F(Initial)];
nextX = Initial; 

% Start iterations:
for i = 1:N 
    nextX = nextX - nt(i)*gradf(nextX);
    recordstep = [recordstep, nextX]
    recordfunction = [recordfunction, nextX]
end

recordstep
recordfunction

%Display results:
plot3(recordstep(1,:), recordstep(2,:), recordfunction, 'x')




