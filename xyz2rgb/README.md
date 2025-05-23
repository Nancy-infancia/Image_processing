# `xyz2rgb` Function Documentation

## Description
Transform a colormap or image from CIE XYZ to sRGB color space.

A color in the CIE XYZ color space consists of three values X, Y and Z. Those values are designed to be colorimetric, meaning that their values do not depend on the display device hardware.

A color in the RGB space consists of red, green, and blue intensities. The output RGB values are calculated to be nonlinear sRGB values with the white point D65. This means the output values are in the colorimetric (sRGB) colorspace.

Input values of class single and double are acceptecd. The shape and the class of the input are conserved.


## Calling Sequence
```
rgb = xyz2rgb(xyz)
```

## Input Parameters

- `xyz`: A numeric matrix representing a single XYZ triplet `[X Y Z]`, a colormap `Nx3`, or an image with shape `MxNx3` or `MxNx3xK`.
  - Supported types: `double`, `uint8`, `int8`, `uint16`
  - Values are assumed to be normalized in the range [0, 1] for floating-point inputs.
  - Input values `single` is not accepted in Scilab

## Dependencies
* colorspace_conversion_input_check
* colorsapce_conversion_revert
* iscolormap
* intmax

## Output Parameters

- `rgb`: A matrix of the same shape as `xyz` containing the corresponding RGB values. The output is:
  - Clamped to [0, 1]
  - Rounded to two decimal places
  - Converted to the original input data type (if it was integer)


## Test cases

1.     xyz2rgb ([0, 0, 0])
   result [0 0 0]
2.     xyz2rgb ([0.4125, 0.2127, 0.0193])
   result [1 0 0]
3.     xyz2rgb ([0.7700, 0.9278, 0.1385])
   result [1 1 0]
4.     xyz2rgb ([0.5276, 0.3812, 0.2482])
   result [1 0.5 0.5]
5.     xyz2rgb ()
    result error
6.     xyz2rgb (1,2)
    result error
