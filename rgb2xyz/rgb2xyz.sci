function xyz = rgb2xyz (rgb)

  if (argn(2) ~= 1)
    error(""Wrong number of input arguments);
  end

  [rgb, cls, sz, is_im, is_nd, is_int] ...
    = colorspace_conversion_input_check ("rgb2xyz", "RGB", rgb, 0);

  
  rgb_lin = rgb;
  mask = rgb <= 0.04045;
  rgb_lin(mask) = rgb(mask) ./ 12.92;
  rgb_lin(~ mask) = ((rgb(~ mask) + 0.055) ./ 1.055) .^2.4;

 
  matrix_rgb2xyz_D65 = ...
    [0.412453, 0.357580, 0.180423;
    0.212671, 0.715160, 0.072169;
    0.019334, 0.119193, 0.950227];

 

  xyz = rgb_lin * matrix_rgb2xyz_D65';

  xyz = colorspace_conversion_revert(xyz, cls, sz, is_im, is_nd, is_int, 1);
endfunction
