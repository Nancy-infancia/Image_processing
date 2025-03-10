function out = logical(x)
    if typeof(x) ~= "constant" then
        error("Input must be a numeric value.");
    end
    out = x <> 0;
endfunction
