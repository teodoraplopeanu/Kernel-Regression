function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower
  n = size(L, 1);
  P = eye(n,n);

  for i = 1:n
    for j = i+1:n
      P(j,:) = P(j,:) - P(i,:) * (L(j,i) / L(i,i));
    end
  end
  
  for i = 1:n
    P(i,:) = P(i,:) / L(i,i);
  endfor
  
endfunction