function r = changeResistance(A,i,j,k)

% This code takes as input the incidence matrix A, and computes the
% resistance distances between the nodes i and j when up to k edges are
% added to the graph. The resulting distances are output as a vector r.

% parameters and initialization
n = size(A,1);

% initial resistance computation
L = ...; % Laplacian
Lones = ...; % L + ee'
r1 = Resistance(Lones,i,j);

b = A(:,j); % neighbors of j
c = A(:,i); % neighbors of i
if A(i,j) > 0 % if i is connected to j
  b(i) = 0; % rule out the possibility of connecting i back to itself
end
index = find(b - c > 0); % b - c > 0 if it is neighbor of j but not of i

sizeindex = min(length(index),k);
fprintf(' edges added = %d\n', sizeindex)

r = zeros(sizeindex+1,1); % 0 to sizeindex edges added
r(1) = r1;

order = randperm(length(index)); % random permutation; 
                                 % index(order(1:sizeindex)) would be the
                                 % nodes we want i to be connected to

for ii = 1:sizeindex % adding nodes one by one and compute the resistance distance
  
  % update L + ee'
  ...

  % compute resistance
  ...
  
end





