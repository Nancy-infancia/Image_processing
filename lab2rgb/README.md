# lab2rgb - Scilab Function

## Description

Transform a colormap or image from CIE L*a*b* to sRGB color space.

A color in the CIE L*a*b* (or CIE Lab) space consists of lightness L* and two color-opponent dimensions a* and b*. The whitepoint is taken as D65. The CIE L*a*b* colorspace is a colorimetric colorspace. It is additionally designed to incorporate the human perception of color differences.

A color in the RGB space consists of red, green, and blue intensities. The input RGB values are interpreted as nonlinear sRGB values with the white point D65. This means the input values are assumed to be in a colorimetric (sRGB) colorspace.

Input values of class single and double are accepted. The shape and the class of the input are conserved.

The input values of L* are normally in the inteval [0, 100] and the values of a* and b* in the interval [-127, 127].

## Calling Sequence

```
rgb = lab2rgb(lab)
```

## Input parameters

lab - A numeric array where the last dimension has size 3, representing L*a*b* color values.

## Dependencies
* colorspace_conversion_input_check()
* colorspace_conversion_revert()
* lab2xyz()
* xyz2rgb()


## Detailed description
1. Input validation and preprocessing
   * Validates that input is a numeric array.
   * Preserves original shape and class (except for integers, which are converted to double).

2. Lab → XYZ Conversion:
    * Calls internal lab2xyz function to convert Lab values to CIE XYZ using D65 reference white.

3. XYZ → RGB Conversion:
   * Calls internal xyz2rgb function to convert XYZ values to sRGB.

4. Output Formatting:
   * Returns result in the same format as the input (same size, matrix/array type), with values typically in [0,1].


## Test cases
1.     lab2rgb ([53.24, 80.09, 67.20])
   Result [0.9999804   0.0000679   0.000032]
2.     lab2rgb ([87.74, -86.18, 83.18])
   Result [0.0008014   1.000054   0.0001915]
3.     lab2rgb ([53.39, 0.00, 0.00])
   Result [0.5000122   0.5000082   0.500029]
4.     lab2rgb ([9.66, 29.68, 15.24])
   Result [0.2500385   0.0000116   0.0000728]
5.     lab2rgb ([150 130 130])
    Result [ 2.7136273   1.0277941   0.4915506]
6.     lab2rgb (sparse ([100, 0.00, 0.00]))
    Result [1.0000036   0.9999959   1.0000355]
7.     lab2rgb (1,2)
    Result Wrong number of input arguments.
8.      lab2rgb("India")
    Result lab2rgb: Lab of invalid data type string








