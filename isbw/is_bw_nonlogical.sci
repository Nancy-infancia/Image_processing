function bool = is_bw_nonlogical (BW)
    bool = ~or ((BW(:) <> 1) & (BW(:) <> 0));
endfunction
