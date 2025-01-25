function bool = is_float_image (img)
    bool = min (img(:)) >= 0 && max (img(:)) <= 1;
endfunction
