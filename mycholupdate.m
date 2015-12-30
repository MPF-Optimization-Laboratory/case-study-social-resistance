function R = mycholupdate(R,x)

% A = R'*R, the output R is A + x*x' = R'*R
% Using Given's rotation.

n = size(R,1);
x = x';

for i = 1:n
  if x(i) ~= 0
    % find the Given's rotation
    r = sqrt(R(i,i)^2 + x(i)^2);
    c = ...; % c is never zero
    s = ...;
    % update; using Givens rotation; operates on the ith and last row
    ...
  end
end