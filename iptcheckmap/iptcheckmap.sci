// Copyright (C) 2018 - IIT Bombay - FOSSEE
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Author: Nancy Infancia, Government college of technology.
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.infunction iptcheckmap (in, func_name, var_name, pos)

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
