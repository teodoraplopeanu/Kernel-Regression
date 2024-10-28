function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  # Implementati algoritmul pentru metoda gradientului conjugat
  r = A*x0 - b;
  v = r;
  r0 = r;
  x = x0;
  tol_squared = tol ^ 2;
  iter = 0;
  
  while (iter < max_iter && r' * r > tol_squared)
    t = (r' * r) / (v' * A * v);
    x = x + t * v;
    r = r - t * A * v;
    s = (r' * r) / (r0' * r0);
    v = r + s * v;
    r0 = r;
    iter = iter + 1;
  endwhile
endfunction