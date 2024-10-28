function [a] = get_prediction_params (K, y, lambda)
  [m, m] = size(K);
  A = lambda * eye(m) + K;

  L = cholesky(A);
  
  % Rezolv sistemul Lx = y, dupa care rezolv sistemul L'x = Ly
  a = L' \ (L \ y);
endfunction
