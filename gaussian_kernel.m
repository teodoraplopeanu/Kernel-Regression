function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function
  dif = norm(x - y) ^ 2;
  retval = exp(-dif / (2 * sigma ^ 2));
endfunction
