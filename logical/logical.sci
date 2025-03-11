function out = logical(x)
    if typeof(x) == "boolean" then
        out=x;       
    elseif typeof(x)=="string"
        error("Enter the valid input");
    else
        out=x<>0;
    end
endfunction
