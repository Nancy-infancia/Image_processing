function returnvalue=isimage(img)
    if type(img)==4 then 
        cond1=isreal(bool2s(img))
    else
        cond1=isreal(img)
    end
    returnvalue=((or(type(img)==[1 5 8]) || or(type(img)==[4 6])) && ~issparse(img) && ~isempty(img) && cond1);
endfunction
