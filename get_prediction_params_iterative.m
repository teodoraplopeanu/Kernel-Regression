function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  m = size(K, 1);
  
  A = eye(m) * lambda + K;

  x0 = zeros(m,1);
  a = conjugate_gradient(A, -lambda * y, x0, 0.0001, 1000);
  
endfunction
