# `lab2xyz` Function Documentation

## Description

Transform a colormap or image from CIE L*a*b* to CIE XYZ color space.

A color in the CIE L*a*b* (or CIE Lab) space consists of lightness L* and two color-opponent dimensions a* and b*. The whitepoint is taken as D65. The CIE L*a*b* colorspace is a colorimetric colorspace, meaning that their values do not depend on the display device hardware. This colorspace is designed to incorporate the human perception of color differences.

A color in the CIE XYZ color space consists of three values X, Y and Z. Those values are also designed to be colorimetric.

Input values of double is accepted. The shape and the class of the input are conserved.

The input values of L* are normally in the inteval [0, 100] and the values of a* and b* in the interval [-127, 127].

## Input parameter
`lab` - Input values of double is accepted. The shape and the class of the input are conserved.
The input values of L* are normally in the inteval [0, 100] and the values of a* and b* in the interval [-127, 127].

## Dependencies
  1. colorspace_conversion_input_check 
  2. colorspace_conversion_revert
  3. iscolormap
  4. intmax

## Syntax
```scilab
xyz = lab2xyz(lab)
```

## Detailed description

This function converts Lab color values to XYZ color values. It calculates intermediate values from the L, a, and b components, and uses a conditional function `f` to handle the non-linear transformation. The output values are scaled using the D65 reference white point to obtain the final XYZ values.

## Test cases

1.     lab2xyz ([53.24, 80.09, 67.20])
   result [0.412437171   0.212665582   0.019335931]
2.     lab2xyz ([97.14, -21.55, 94.48])
   result [0.770066731   0.927843128   0.138522754]
3.     lab2xyz ([32.30, 79.19, -107.86])
   result [0.180466443   0.072188401   0.95037856]
4.     lab2xyz ([100, 0.00, 0.00])
   result [0.95047   1.   1.08883]
5.     lab2xyz ([68.11, 48.39, 22.83])
    result [0.527644949   0.381214079   0.248283392]
6.     lab2xyz ([60.32, 98.24, -60.83])
    result [0.592841994   0.284800743   0.969605429]
7.     lab2xyz (sparse ([100, 0.00, 0.00]))
    result [0.95047   1.   1.08883]
8.     lab2xyz([5 4 3])
    result[0.0062376   0.0055353   0.0039296]
9.     lab2xyz([0 1 0 1 1])
    result error
10.     lab2xyz("India")
    result  erro:  lab2xyz: Lab of invalid data type string
