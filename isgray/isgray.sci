function bool=isgray(img)
    if type(img)==10 then
        bool=%f
    else   
     bool=%f;
        if isimage(img) && ndims(img) <5 && size (img,3)==1 then
            if type(img) == 1 then
                bool = ispart(is_float_image,img);
            elseif or(typeof(img)=='uint8' | typeof(img)=='uint16' | typeof(img)=='int16') then
                bool = %t;
            end
        end
     end
endfunction
