A = [1 1 1;
    -1 -1 2;
  -10001.1 -1 1];
b = [3;0;-10001.1];
A\b
# hi guys

sys = [1 1;
       1 -1];
sysans = [2;0];
% sys/sysans

sys2 = [1 1 1;
        -1 -1 2;
        1 -1 -1];
sys2ans = [3;0;-1];

%scalars should be -1, 1, 1

test = [2 1 -1;
        -3 -1 2;
        -2 1 2];
testans = [8; -11; -3];

% A is a matrix, nxn.
% B is a matrix, 1xn.
function ans = Gaussian(A, B);
  n = length(A);
  
  for i = 2:n;
    for k = 1:i-1;
      scalar = -1 * A(i, k)/A(k, k);
      
      A(i,(1:end)) += A(k, (1:end)) * scalar;
      B(i, 1) += B(k, 1) * scalar;
    end
  end
  for i = 2:n;
    for k = 1:i-1;
      scalar = -1 * A(k, i)/A(i, i);
      A(k,(1:end)) += A(i, (1:end)) * scalar;
      B(k, 1) += B(i, 1) * scalar;
    end
  end
  for i = 1:n;
    scalar = 1/A(i, i);
    A(i, (1:end)) *= scalar;
    B(i, 1) *= scalar;
  end
  ans = B;
end

an = Gaussian(sys2, sys2ans)



function ans = GaussianNeel(A, B)
  
end
% need a function to swap rows of matrix, multiply two rows by a scalar, and add two rows to each other.


  