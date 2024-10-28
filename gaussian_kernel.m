function retval = gaussian_kernel (x, y, sigma)
  dif = norm(x - y) ^ 2;
  retval = exp(-dif / (2 * sigma ^ 2));
endfunction
