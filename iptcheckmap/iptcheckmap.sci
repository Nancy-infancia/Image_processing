function iptcheckmap (in, func_name, var_name, pos)

  if argn(2) ~= 4 
    error("Wrong number of input arguments")
  elseif type(func_name)~=10 then
    error ("Argument func_name must be a string");
  elseif type(var_name)~=10 then
    error ("Argument var_name must be a string");
  elseif (~or(type(pos)==[1 5 8]) || ~isscalar (pos) || ~isreal (pos) || pos <= 0 || modulo (pos, 1) ~= 0)
    error ("Argument pos must be a real positive integer");
  end
  
if ~iscolormap(in) then
    error(msprintf("Function %s expected input number %d, %s, to be a valid colormap. " + ..
                   "Valid colormaps must be nonempty, double, 2-D matrices with 3 columns.", ..
                   func_name, pos, var_name));
end

endfunction
