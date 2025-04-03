function tf = iscolormap (cmap)

  if (nargin < 1)
    error("Exceeds no.of inputs");
  end

  tf = or(type(cmap)==1 || type(cmap)==2 || type(cmap)==8) && isreal (cmap) && type (cmap)==1 && ndims (cmap) == 2 && size ((cmap),2) == 3;

endfunction
