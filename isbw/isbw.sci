function bool=isbw(img, logic)
    if type(img)==10 then
        bool=%f;
    else
     if nargin()<2 then
            disp("<2")
            logic="logical";
        end
        bool=%f;
        if isimage(img) && ndims(img)<5 && size(img,3)==1 then
            if strcmp(logic,"logical")==0 then
                bool=or(type(img)==[4 6]);
            elseif strcmp(logic,"non-logical")==0 then
                bool = ispart(is_bw_nonlogical, img);
            else
                error("isbw:LOGIC must be the string logical or non-logical");
            end
        end
     end
endfunction


