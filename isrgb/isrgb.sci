// Copyright (C) 2018 - IIT Bombay - FOSSEE
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Author: Nancy Infancia M, Government college of technology.
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in


function bool=isrgb(img)
    if type(img)==10 then
        bool=%f;
    else
     bool=%f;
        if isimage(img) && ndims(img) <5 && size (img,3)==3 then
            if type(img)==1 then
                bool = ispart(is_float_image,img);
            elseif typeof(img)=='uint8' | typeof(img)=='uint16' | typeof(img)=='int16' then
                bool = %t;
            end
        end
    end
endfunction
