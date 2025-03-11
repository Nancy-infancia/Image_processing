function out = logical(x)
    if typeof(x) == "boolean" then
        out=x;       
    elseif typeof(x)=="string"
        error("Wrong type of argument");
    else
        out=x<>0;
    end
endfunction
