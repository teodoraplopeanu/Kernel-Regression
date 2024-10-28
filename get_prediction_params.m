function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  [m, m] = size(K);
  A = lambda * eye(m) + K;

  L = cholesky(A);
  
  % Rezolv sistemul Lx = y, dupa care rezolv sistemul L'x = Ly
  a = L' \ (L \ y);
endfunction
