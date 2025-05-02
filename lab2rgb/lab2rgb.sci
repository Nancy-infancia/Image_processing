function rgb = lab2rgb (lab)

  if (nargin ~= 1)
    error("Wrong no.of inputs");
  end

  [lab, cls, sz, is_im, is_nd, is_int] ...
    = colorspace_conversion_input_check ("lab2rgb", "Lab", lab, 1);
  //  currently only accept single and double inputs (as Matlab does)
  // (Integer types would be possible, but would need an explanation in the
  //  help text how to scale them.)

  // transform from CIE L*a*b* to CIE XYZ values
  xyz = lab2xyz (lab);

  // transform from CIE XYZ to non-linear sRGB values
  rgb = xyz2rgb (xyz);

  // always return values of type double for Matlab compatibility (exception: type single)
  rgb = colorspace_conversion_revert (rgb, cls, sz, is_im, is_nd, is_int, 1);

endfunction
