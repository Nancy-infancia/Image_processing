function bool = ispart (foo, in)
    bool = foo (in(1:ceil (size(in,1) /100), 1:ceil (size(in,2) /100)));
    if bool then
        bool = foo (in);
    end
endfunction
