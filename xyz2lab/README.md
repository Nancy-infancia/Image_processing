# xyz2lab - Scilab Function

## Description

Transform a colormap or image from CIE XYZ to CIE L*a*b* color space.

A color in the CIE XYZ color space consists of three values X, Y and Z. Those values are designed to be colorimetric, meaning that their values do not depend on the display device hardware.

A color in the CIE L*a*b* (or CIE Lab) space consists of lightness L* and two color-opponent dimensions a* and b*. The whitepoint is taken as D65. The CIE L*a*b* colorspace is also a colorimetric colorspace. It is designed to incorporate the human perception of color differences.

Input values of class single and double are accepted. The shape and the class of the input are conserved.

The return values of L* are normally in the inteval [0, 100] and the values of a* and b* in the interval [-127, 127]

## Calling Sequence

```
lab = xyz2lab(xyz)
```

## Input parameter
xyz - Matrix or array. (A numeric array where the last dimension has size 3, representing xyz color values)

## Dependencies
* colorspace_conversion_input_check()
* colorspace_conversion_revert()
* iscolormap
* intmax

## Detailed description

1. Input Validation & Preprocessing:
* Ensures xyz has valid dimensions.
* Normalizes XYZ by dividing with D65 reference white
  
2. Non-linear transformation
* Applies a piecewise transformation to each XYZ channel:
Linear below threshold (epsilon = (6/29)^3)

3. Lab Computation:
Computes L*, a*, b* using standard CIE formulas

4. Output Formatting:
Reshapes and restores original input format (matrix/array dimensions and type).

## Test cases
1.     xyz2lab ([0.4125, 0.2127, 0.0193])
   Result [53.243735   80.093121   67.238781]
3.     xyz2lab ([0.7700, 0.9278, 0.1385])
   Result [97.138247  -21.555908   94.482485]
5.     xyz2lab ([0.5276, 0.3812, 0.2482])
   Result [68.108965   48.382794   22.841896]
7.     xyz2lab (sparse ([0 0 0]))
   Result [0.   0.   0.]
9.     xyz2lab (1,2)
    Result Wrong number of input arguments.
11.     xyz2lab("hello")
   result xyz2lab: XYZ of invalid data type string





