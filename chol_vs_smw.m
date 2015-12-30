function [errchol,errsmw] = chol_vs_smw(A,i,j)

% This code takes as input the incidence matrix A, and computes the
% resistance distances between the nodes i and j up to one edge is
% added to the graph.
%
% It compares the Cholesky rank-one update and the Sherman-Morrison formula
% on finding
%     y := ( L + ee' + xx')\(ei - ej)
% norm residuals are output as errchol and errsmw, respectively.

% parameters
n = size(A,1);

% compute Cholesky of Lones
L = ...; % Laplacian
Lones = ...; % L + ee'
R = chol(Lones);

b = A(:,j); % neighbors of j
c = A(:,i); % neighbors of i
if A(i,j) > 0 % if i is connected to j
  b(i) = 0; % rule out the possibility of connecting i back to itself
end
index = find(b - c > 0); % b - c > 0 if it is neighbor of j but not of i

order = randperm(length(index)); % random permutation; 
                                 % index(order(1)) would be the
                                 % nodes we want i to be connected to
                                 
eij = zeros(n,1); % initialize eij
eij(i) = 1; eij(j) = -1;

  
% define x
...

% use rank one update to compute y (names as ychol)
t1 = tic;
...
fprintf(' time using chol update %g\n', toc(t1))

% use Sherman-Morrison formula to compute y (named as ysmw)
t2 = tic;
...
fprintf(' time using sherman-morrison %g\n', toc(t2))

% Compute norm residuals to compare the methods
M = Lones + x*x'; % LHS of the system
errchol = ...;
errsmw = ...;
  






